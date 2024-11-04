#!/usr/bin/env bats

COMMIT_SCRIPT_PATH="$(dirname "$BATS_TEST_FILENAME")/commit"
TEST_REPO="tmp.folder"

setup() {
    echo "Running setup..."
    mkdir $TEST_REPO
    cd "$TEST_REPO"
    git init > /dev/null
}

teardown() {
    echo "Running teardown..."
    cd .. || exit 1
    rm -rf "$TEST_REPO"
}

run_commit_with_branch() {
    local branch=$1
    local message=$2
    git checkout -b "$branch" > /dev/null 2>&1
    touch newTestFile
    git add newTestFile

    run "$COMMIT_SCRIPT_PATH" "$message"
}

@test "commit script help works" {
    echo "Script path: $COMMIT_SCRIPT_PATH"
    run bash "$COMMIT_SCRIPT_PATH" --help

    # Grep the output for expected help content
    echo "$output" | grep -q "Create a commit prefixed with the current branch name."
    echo "$output" | grep -q "Usage:"
    echo "$output" | grep -q "commit MESSAGE"
    echo "$output" | grep -q "Example:"
    echo "$output" | grep -q "commit \"Hello world!\""

}

@test "commit includes branch name for non-ignored branches" {
    run_commit_with_branch "LPD-1234" "Test message with branch name"
    git log -1 --pretty=%B | grep "LPD-1234: Test message with branch name"
}

@test "commit does not include branch name for ignored branches" {
    run_commit_with_branch "dev" "Test message with ignored branches"

    git log -1 --pretty=%B | grep "Test message with ignored branches"
}

@test "commit does not include branch name for custom ignored branches" {
    # Add custom ignored branch to .smart-commit-ignore
    echo "custom-ignore-branch" > ".smart-commit-ignore"
    git add .smart-commit-ignore
    git commit -m "Add custom ignore file" > /dev/null

    run_commit_with_branch "custom-ignore-branch" "Test message with custom ignore branch name"

    git log -1 --pretty=%B | grep "Test message with custom ignore branch name"
}
