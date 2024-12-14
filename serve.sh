#!/bin/bash

# Define the custom URL
CUSTOM_URL="http://dev.local:8000/book-of-rc/"

# Run mkdocs serve
mkdocs serve  &

# Wait for MkDocs to start
sleep 2

# Print your custom URL
echo "------------------------------------------------------"
echo "Custom URL: $CUSTOM_URL"
echo "------------------------------------------------------"

# Detect the operating system
OS=$(uname)

# Open the URL in a private browsing window
if [[ "$OS" == "Darwin" ]]; then
    # macOS
    open -na "Microsoft Edge" --args --inprivate "$CUSTOM_URL" || \
    open -na "Google Chrome" --args --incognito "$CUSTOM_URL" || \
    open -na "Firefox" --args -private-window "$CUSTOM_URL"
elif [[ "$OS" == "Linux" ]]; then
    # Linux
    xdg-open "$CUSTOM_URL" &>/dev/null &
    echo "For private browsing, manually open the URL in incognito mode."
elif [[ "$OS" == "MINGW"* || "$OS" == "CYGWIN"* || "$OS" == "MSYS"* ]]; then
    # Windows
    start msedge --inprivate "$CUSTOM_URL" || \
    start chrome --incognito "$CUSTOM_URL" || \
    start firefox -private-window "$CUSTOM_URL"
else
    echo "Operating system not supported for auto private browsing."
fi

# Keep the script running until MkDocs stops
wait
