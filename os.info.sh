#!/bin/bash

# Show OS version
echo "Operating System: $(sw_vers -productVersion)"

# Show all users with Bash shell installed
echo "Users with Bash shell installed:"
dscl . list /Users | awk '{print $1}' | grep -v _ | sort -u

# Show open ports
echo "Open ports:"
lsof -i -n | awk '{print $9}' | sort -u
