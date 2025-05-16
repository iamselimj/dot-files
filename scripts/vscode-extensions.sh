#!/bin/bash

# Get the absolute path of the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

install_vscode_extensions() {
    info "Installing VSCode extensions..."

    # List of Extensions
    extensions=(
        vscode-icons-team.vscode-icons
        redhat.vscode-yaml
        eamodio.gitlens
        esbenp.prettier-vscode
    )

    for e in "${extensions[@]}"; do
        code --install-extension "$e"
    done

    success "VSCode extensions installed successfully"
}

if [ "$(basename "$0")" = "$(basename "${BASH_SOURCE[0]}")" ]; then
    install_vscode_extensions
fi
