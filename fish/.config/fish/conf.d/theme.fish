if test "$TERM" != "xterm-kitty"
	exit 0
end

set -l theme (defaults read -g AppleInterfaceStyle 2> /dev/null)
if test -n "$theme" -a "$theme" = "Dark"
	kitty @ set-colors --all --configured ~/.config/kitty/base16-tomorrow-night.conf
else
	kitty @ set-colors --all --configured ~/.config/kitty/base16-tomorrow.conf
end
