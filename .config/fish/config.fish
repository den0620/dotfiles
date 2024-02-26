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
	set ORANGE_F      "$(set_color -b '000000' && set_color 'b95628')" #some hex :3
	set ORANGE_B_USER "$(set_color -b 'b95628' && set_color 'dddddd')" # 'b95628' is dark orange
	set ORANGE_B_HOST "$(set_color -b 'b95628' && set_color 'dddddd')" # 'f35d17' is orange
	set ORANGE_B_SPEC "$(set_color -b 'b95628' && set_color 'dddddd')" # 'dddddd' is gray
	set ORANGE_B_PWD  "$(set_color -b 'b95628' && set_color 'dddddd')" # '000000' obviously oled black
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

