function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end


function fish_prompt
	set ORANGE_F      "$(printf '\033[0m'     && set_color 'b95628')" # some hex
	set ORANGE_B_USER "$(set_color -b 'b95628' && set_color 'dddddd')" # 'b95628' is dark orange
	set ORANGE_B_HOST "$(set_color -b 'b95628' && set_color 'dddddd')" # 'f35d17' is orange
	set ORANGE_B_SPEC "$(set_color -b 'b95628' && set_color 'dddddd')" # 'dddddd' is gray
	set ORANGE_B_PWD  "$(set_color -b 'b95628' && set_color 'dddddd')" # '033[0m' is esc sequence for reset
	printf '%s%s%s%s@%s%s%s:%s%s%s%s ' \
		$ORANGE_F \
		$ORANGE_B_USER \
		$USER \
		$ORANGE_B_SPEC \
		$ORANGE_B_HOST \
		$hostname \
		$ORANGE_B_SPEC \
		$ORANGE_B_PWD \
		(prompt_pwd) \
		$ORANGE_F \
		(set_color normal)
end
# meow
function fish_right_prompt
	set YELLOW_F      "$(printf '\033[0m'      && set_color 'ffa04c')" # 'ffa04c' is like yellow but still a bit orange
	set YELLOW_B_STAT "$(set_color -b 'ffa04c' && set_color   red   )"
	set   OLED_B_STAT "$(printf '\033[0m'      && set_color   red   )"
	if test $status -ne "0"
		printf '$s✘%s ' \
			$OLED_B_STAT \
			(set_color normal)
	end
end

