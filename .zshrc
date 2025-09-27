# --- Básicos ---
export EDITOR=nano
export TERM=xterm-256color

# Neovim
export PATH="$HOME/Programs/nvim-linux-x86_64/bin:$PATH"

# Historial cómodo
export HISTSIZE=5000
export SAVEHIST=5000
setopt HIST_IGNORE_ALL_DUPS HIST_IGNORE_SPACE SHARE_HISTORY
setopt AUTO_CD

# Autocompletado
autoload -Uz compinit
compinit
# Mejoras de completado
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 'r:|[._-]=* r:|=**'

# Prompt con Starship (minimal)
eval "$(starship init zsh)"

# Plugins (vía paquetes de Arch)
# autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# syntax highlighting (debe ir al final)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases sencillos (puedes añadir los tuyos)
alias ls='ls --color=auto'
alias grep='grep --color=auto'
