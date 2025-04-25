if [[ -n "$SSH_CONNECTION" || -n "$SSH_CLIENT" ]]; then
  export SSH_AUTH_SOCK="$HOME/.gnupg/S.gpg-agent.ssh"
else
  if pgrep -qx "1password" >/dev/null || pgrep -qx "1Password" >/dev/null; then
    export SSH_AUTH_SOCK="$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
  else
    echo "⚠️  1Password SSH agent not running; falling back to gpg-agent"
    export SSH_AUTH_SOCK="$HOME/.gnupg/S.gpg-agent.ssh"
  fi
fi