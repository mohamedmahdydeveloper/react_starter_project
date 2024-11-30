#!/bin/bash

# 1. Define the repository URL and the target file name
REPO_URL="https://github.com/username/repository.git"  # استبدل بـ URL الخاص بالمستودع
EXECUTED_FILE="npm_install"                           # اسم الملف الذي تريد تشغيله

# 2. Clone the repository
echo "Cloning the repository..."
git clone "$REPO_URL"

# 3. Extract the repository name from the URL
REPO_NAME=$(basename "$REPO_URL" .git)

# 4. Navigate to the cloned repository
cd "$REPO_NAME" || { echo "Failed to enter repository directory."; exit 1; }

# 5. Change the file mode to executable
echo "Changing file mode to executable..."
chmod +x "$EXECUTED_FILE"

# 6. Run the executable file
echo "Running the file..."
./"$EXECUTED_FILE"