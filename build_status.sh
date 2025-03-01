#!/bin/bash

# Pull latest changes to get recent logs
git pull

# Check for claude status file
if [ -f "build_logs/claude/status.md" ]; then
    echo "💠 Found detailed status file"
    cat build_logs/claude/status.md
    exit 0
fi

# Get the status from README if status file isn't available
if [ -f "build_logs/README.md" ]; then
    echo "ℹ️ Using fallback status from README.md"
    cat build_logs/README.md
    exit 0
fi

# If all else fails
echo "❌ No status information available"
echo "Try running a build first or wait for the scheduled job to complete"
exit 1