# Amelia Linux: Nicole — Nix environment for interactive/TTY shells
if [ -d /nix ]; then
    export NIX_REMOTE=daemon
    case ":$PATH:" in
        *":$HOME/.nix-profile/bin:"*) ;;
        *) export PATH="$HOME/.nix-profile/bin:/nix/var/nix/profiles/default/bin:$PATH" ;;
    esac
    case ":${XDG_DATA_DIRS:-/usr/local/share:/usr/share}:" in
        *":$HOME/.nix-profile/share:"*) ;;
        *) export XDG_DATA_DIRS="$HOME/.nix-profile/share:/nix/var/nix/profiles/default/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}" ;;
    esac
fi
