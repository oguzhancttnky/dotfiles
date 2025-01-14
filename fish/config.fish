set -gxp PATH /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /snap/bin $HOME/go/bin /usr/local/go/bin
set fish_greeting ""

# pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

bind \cR history-search-backward
bind \cS history-search-forward
