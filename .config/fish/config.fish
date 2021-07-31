# remove default greeting
set -g fish_greeting

set -gx EDITOR /usr/bin/nvim
set -gx VISUAL /usr/bin/nvim
set -gx PAGER /usr/bin/most

abbr -ag n nvim
abbr -ag g git
abbr -ag ga 'git add -p'
abbr -ag gc 'git checkout'
abbr -ag gm 'git commit -m'
abbr -ag gl 'git pull'
abbr -ag gp 'git push'

abbr -ag cfgnvim 'nvim ~/.config/nvim/init.vim'
abbr -ag cfgfish 'nvim ~/.config/fish/config.fish'
abbr -ag cfgtmux 'nvim ~/.tmux.conf'
abbr -ag cfgatty 'nvim ~/.alacritty.yml'

# config abbr for dotfiles
abbr -ag config "/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

if command -v exa > /dev/null
	abbr -ag l 'exa'
	abbr -ag ls 'exa'
	abbr -ag ll 'exa -l'
	abbr -ag lll 'exa -la'
else
	abbr -ag l 'ls'
	abbr -ag ll 'ls -l'
	abbr -ag lll 'ls -la'
end

# Type - to move up to top parent dir which is a repository
function d
	while test $PWD != "/"
		if test -d .git
			break
		end
		cd ..
	end
end

