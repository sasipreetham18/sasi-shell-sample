#!/bin/bash

echo "User Management Menu:"
echo "1. Create a User"
echo "2. Delete a User"
echo "3. List Users"
read -p "Choose an option [1-3]: " choice

case $choice in
  1)
    read -p "Enter username to create: " user
    sudo useradd "$user" && echo "User $user created successfully."
    ;;
  2)
    read -p "Enter username to delete: " user
    sudo userdel "$user" && echo "User $user deleted successfully."
    ;;
  3)
    cut -d: -f1 /etc/passwd
    ;;
  *)
    echo "Invalid option"
    ;;
esac

