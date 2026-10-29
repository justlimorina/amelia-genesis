# Amelia OS CLI Enhancements
# Automatically loaded for interactive shells

if [ -n "$PS1" ]; then
    # Aliases for modern CLI tools
    if command -v batcat >/dev/null 2>&1; then
        alias bat='batcat'
    fi
    if command -v fdfind >/dev/null 2>&1; then
        alias fd='fdfind'
    fi
    if command -v eza >/dev/null 2>&1; then
        alias ls='eza --icons'
        alias ll='eza -la --icons'
        alias lt='eza --tree --level=2 --icons'
    fi

    # Convenient maintenance shortcuts
    alias sys-update='sudo apt update && sudo apt upgrade -y && flatpak update -y'
    alias sys-clean='sudo apt autoremove --purge -y && sudo apt clean && flatpak uninstall --unused -y'

    # Display fastfetch on new terminal sessions
    if [ -t 1 ] && command -v fastfetch >/dev/null 2>&1 && [ -z "$FASTFETCH_SHOWN" ]; then
        export FASTFETCH_SHOWN=1
        fastfetch
    fi
fi
