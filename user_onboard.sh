#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root (using sudo)"
  exit
fi

# 1. Prompt for Username
read -p "Enter the new username: " NEW_USER

# 2. Check if user already exists
if id "$NEW_USER" &>/dev/null; then
    echo "Error: User $NEW_USER already exists."
    exit
fi

# 3. Create the user with default settings
useradd -m -s /bin/bash "$NEW_USER"
echo "User $NEW_USER created successfully."

# 4. Generate a temporary random password
TEMP_PASS=$(date +%s%N | sha256sum | head -c 16)
echo "$NEW_USER:$TEMP_PASS" | chpasswd

# 5. Force user to change password on first login
passwd -e "$NEW_USER"

# 6. Assign to a default group (e.g., 'staff' or a specific project group)
usermod -aG staff "$NEW_USER"
echo "$NEW_USER added to 'staff' group."

# 7. Output Final Credentials
echo "--- Onboarding Complete ---"
echo "Username: $NEW_USER"
echo "Temporary Password (MUST be changed at login): $TEMP_PASS"
echo "---------------------------"

# Log the action
echo "$(date) - User $NEW_USER created and configured by script." >> /var/log/user_onboarding.log
