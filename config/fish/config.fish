pokemon-colorscripts -r --no-title
fish_add_path $HOME/.local/share/solana/install/active_release/bin

fish_add_path $HOME/.cargo/bin
fish_add_path ~/.local/bin

set -gx NVM_DIR $HOME/.nvm
if test -s $NVM_DIR/nvm.sh
    bass source $NVM_DIR/nvm.sh
end


fish_add_path $HOME/.nvm/versions/node/v24.10.0/bin

fish_add_path $HOME/.yarn/bin
fish_add_path $HOME/.config/yarn/global/node_modules/.bin

set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

alias ls='exa'
alias weather='curl wttr.in/YOUR_CITY'
alias vim='nvim'
alias fishconf='vim $HOME/.config/fish/config.fish'
alias keys='vim $HOME/.config/i3/config'
alias dnschanger='bash $HOME/.scripts/dnschanger.sh'
alias killer='bash $HOME/.scripts/killer.sh'
alias dsort='bash $HOME/.scripts/dsort.sh'
alias record='wl-screenrec --audio --audio-device bluez_output.7A_61_BF_55_BB_10.1.monitor 2>/dev/null'
alias yt-mp3='yt-dlp -x --audio-format mp3 --audio-quality 0 --embed-metadata --embed-thumbnail -o "%(title)s.%(ext)s"'
alias prettier='bunx prettier --write .'
fish_add_path $HOME/.opencode/bin

export PATH="$PATH:$HOME/.local/bin"

starship init fish | source

fish_add_path -a "$HOME/.foundry/bin"

set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

function yt
    set clean (string split '&' $argv)[1]
    yt-dlp -x --audio-format flac --embed-thumbnail --add-metadata --no-playlist -o "$HOME/Music/%(artist)s - %(title)s.%(ext)s" $clean
    mpc update > /dev/null 2>&1
end

