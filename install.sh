#!/bin/bash

INSTALL_DIR="$HOME/.iplifty"
mkdir -p "$INSTALL_DIR"

cat << 'EOF' > "$INSTALL_DIR/iplifty.sh"
#!/bin/bash
ip=$(curl -s https://api.ipify.org)
echo "iplifty: $ip"
EOF

chmod +x "$INSTALL_DIR/iplifty.sh"
ln -sf "$INSTALL_DIR/iplifty.sh" /usr/local/bin/iplifty

echo "Installation complete! You can now run 'iplifty' from anywhere to show your IP."
