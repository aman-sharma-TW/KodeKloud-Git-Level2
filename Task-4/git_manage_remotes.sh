#!/bin/bash

# =============================
# Script to Add Git Remote, Copy File, Commit & Push
# =============================

# Define variables
REPO_PATH="/usr/src/kodekloudrepos/beta"
REMOTE_NAME="dev_beta"
REMOTE_URL="/opt/xfusioncorp_beta.git"
FILE_TO_COPY="/tmp/index.html"
DEST_FILE="$REPO_PATH/index.html"

# Check if the repo directory exists
if [ ! -d "$REPO_PATH/.git" ]; then
  echo "[ERROR] Git repo not found at $REPO_PATH"
  exit 1
fi

# Navigate to repo
cd "$REPO_PATH" || exit 1

# Add the remote (if it doesn't already exist)
if git remote get-url "$REMOTE_NAME" >/dev/null 2>&1; then
  echo "[INFO] Remote '$REMOTE_NAME' already exists. Skipping add."
else
  git remote add "$REMOTE_NAME" "$REMOTE_URL"
  echo "[INFO] Added remote '$REMOTE_NAME' -> $REMOTE_URL"
fi

# Copy index.html into repo
if [ -f "$FILE_TO_COPY" ]; then
  cp "$FILE_TO_COPY" "$DEST_FILE"
  echo "[INFO] Copied $FILE_TO_COPY to $DEST_FILE"
else
  echo "[ERROR] File $FILE_TO_COPY does not exist."
  exit 1
fi

# Add and commit the file
git add index.html
git commit -m "Added index.html"
echo "[INFO] Committed index.html to master branch"

# Push to dev_beta remote
git push "$REMOTE_NAME" master
echo "[INFO] Pushed master branch to $REMOTE_NAME"

