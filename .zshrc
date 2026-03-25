autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{pink}${vcs_info_msg_0_}%f$ '

alias gpr='git pull --rebase origin HEAD'
alias claudd='claude --dangerously-skip-permissions'

# tmux shortcuts
t() {
  case "$1" in
    n) tmux new -s "$2" ;;
    l) tmux ls ;;
    a) tmux a -t "$2" ;;
    d) tmux kill-ses -t "$2" ;;
    *) echo "Usage: t n <name> | t l | t a <name> | t d <name>" ;;
  esac
}
