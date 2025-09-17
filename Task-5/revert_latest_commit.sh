#!/bin/bash

# ======================================
# Script to Revert Latest Git Commit
# Repository: /usr/src/kodekloudrepos/apps
# Commit Message: "revert apps"
# ======================================

REPO_PATH="/usr/src/kodekloudrepos/apps"
CUSTOM_MSG="revert apps"

# Ensure the directory exists
if [ ! -d "$REPO_PATH/.git" ]; then
  echo "[ERROR] No Git repository found at $REPO_PATH"
  exit 1
fi

# Change to the repo directory
cd "$REPO_PATH" || exit 1

# Revert latest commit
echo "[INFO] Reverting latest commit..."
git revert HEAD --no-edit

# Amend the revert commit message to "revert apps"
echo "[INFO] Changing commit message to: $CUSTOM_MSG"
git commit --amend -m "$CUSTOM_MSG"

# Done
echo "[SUCCESS] Latest commit has been reverted with message: '$CUSTOM_MSG'"
