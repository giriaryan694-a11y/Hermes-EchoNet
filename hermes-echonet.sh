#!/bin/bash

set -e

DEFAULT_PATH="$HOME/.hermes"
HERMES_DIR=""

# ----------------------------
# Args
# ----------------------------
while getopts "p:" opt; do
  case $opt in
    p) HERMES_DIR="$OPTARG" ;;
    *) echo "Usage: $0 [-p hermes_path]"; exit 1 ;;
  esac
done

# fallback
if [ -z "$HERMES_DIR" ]; then
  HERMES_DIR="$DEFAULT_PATH"
fi

clear

echo "====================================================="
echo "        🛰️ Hermes-EchoNet Automater (v2)           "
echo "====================================================="
echo "   Written By Aryan Giri | giriaryan694-a11y"
echo "-----------------------------------------------------"
echo ""

# ----------------------------
# Validate installation
# ----------------------------
if [ ! -d "$HERMES_DIR" ]; then
  echo "[!] Hermes environment not found at: $HERMES_DIR"
  echo ""
  echo "[-] Required setup options:"
  echo "    1) Run: hermes config edit"
  echo "       -> then set correct Hermes path inside config.yaml"
  echo ""
  echo "    2) OR reinstall Hermes:"
  echo "       curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash"
  echo ""
  echo "    After install:"
  echo "       hermes setup"
  echo "       (recommended: NVIDIA NIM integration)"
  echo ""
  exit 1
fi

CONFIG_FILE="$HERMES_DIR/config.yaml"

if [ ! -f "$CONFIG_FILE" ]; then
  echo "[!] config.yaml not found in Hermes directory"
  echo "    Expected: $CONFIG_FILE"
  echo ""
  echo "Run: hermes config edit"
  exit 1
fi

BASE_URL="https://raw.githubusercontent.com/giriaryan694-a11y/Hermes-EchoNet/refs/heads/main"

echo "[+] Hermes directory detected: $HERMES_DIR"
echo "[+] Loading config: $CONFIG_FILE"
echo ""

# ----------------------------
# Sync function
# ----------------------------
sync_file () {
    local file=$1
    local target="$HERMES_DIR/$file"
    local url="$BASE_URL/$file"

    echo "[*] Syncing: $file"

    if [ -f "$target" ]; then
        echo "    [-] Backup created: $file.bak"
        cp "$target" "$target.bak"
    fi

    curl -fsSL "$url" -o "$target"

    if [ $? -ne 0 ]; then
        echo "    [!] Failed to download $file"
        exit 1
    fi

    echo "    [✓] Updated: $file"
    echo ""
}

# ----------------------------
# Execution
# ----------------------------
sync_file "SOUL.md"
sync_file "config.yaml"

echo "====================================================="
echo "   [✓] Hermes-EchoNet Automater Complete"
echo "   Status: Ready → Run 'hermes setup' if needed"
echo "====================================================="
