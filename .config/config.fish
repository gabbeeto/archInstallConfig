if status is-interactive
    set -g fish_greeting "🌸 welcome back, cutie 🌸"

    set -g fish_color_normal f8e7f3
    set -g fish_color_command ff9ec7
    set -g fish_color_param e7c6ff
    set -g fish_color_keyword d7a1f9
    set -g fish_color_quote f9e2af
    set -g fish_color_redirection a6c8ff
    set -g fish_color_end b8e0d2
    set -g fish_color_error ff7eb6
    set -g fish_color_selection --background=ff9ec7 --foreground=2a1f2d
    set -g fish_color_search_match --background=ff9ec7
    set -g fish_color_operator 9ee6e6
    set -g fish_color_escape b8f2f2
    set -g fish_color_autosuggestion 8a6f8f
    set -g fish_color_comment 8a6f8f
    set -g fish_color_cwd ff9ec7
    set -g fish_color_cwd_root ff7eb6
    set -g fish_color_user e7c6ff
    set -g fish_color_host a6c8ff
    set -g fish_color_host_remote d7a1f9
    set -g fish_color_status ff7eb6
    set -g fish_color_cancel ff7eb6
    set -g fish_color_valid_path --underline
    set -g fish_color_history_current --bold

    set -g fish_pager_color_prefix ff9ec7
    set -g fish_pager_color_completion f8e7f3
    set -g fish_pager_color_description 8a6f8f
    set -g fish_pager_color_progress ff9ec7
    set -g fish_pager_color_background 2a1f2d
    set -g fish_pager_color_selected_background ff9ec7
    set -g fish_pager_color_selected_completion 2a1f2d
    set -g fish_pager_color_selected_description 5a4560
end

if type -q starship
    starship init fish | source
end

set -gx EDITOR helix
set -gx VISUAL helix





alias hx 'helix'
alias download 'yt-dlp -f "bestvideo[height<=720]+bestaudio/best[height<=720]" --embed-subs  --add-metadata --cookies-from-browser firefox --merge-output-format mkv '
alias downloadP 'yt-dlp -o  "%(playlist_index)03d - %(title)s.%(ext)s" -f "bestvideo[height<=720]+bestaudio/best[height<=720]" --embed-subs --add-metadata --cookies-from-browser firefox --merge-output-format mkv '
alias downloadM 'yt-dlp -t mp3 --cookies-from-browser firefox  '
alias downloadPM 'yt-dlp -o  "%(playlist_index)03d - %(title)s.%(ext)s" -t mp3 --cookies-from-browser firefox  '
alias downloadMP 'yt-dlp -o  "%(playlist_index)03d - %(title)s.%(ext)s" -t mp3 --cookies-from-browser firefox  '

set -x EDITOR "helix"
set -x EDITOR "helix"

set -x GTK_IM_MODULE 'fcitx'
set -x QT_IM_MODULE 'fcitx'
set -x XMODIFIERS '@im=fcitx'

fish_add_path ~/.cargo/bin ~/.local/bin

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
