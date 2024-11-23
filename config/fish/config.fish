if status is-interactive
    # Commands to run in interactive sessions can go here
end

# pnpm
set -gx PNPM_HOME "/home/taufik/.local/share/pnpm"
if not contains -- $PNPM_HOME $PATH
    set -gx PATH $PNPM_HOME $PATH
end
# pnpm end

# bun
set -gx BUN_INSTALL "$HOME/.bun"
set -gx PATH "$BUN_INSTALL/bin" $PATH
