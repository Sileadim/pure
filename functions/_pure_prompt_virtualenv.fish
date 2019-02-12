function _pure_prompt_virtualenv --description "Display virtualenv directory"
    if test -n "$VIRTUAL_ENV"

	set d2 (basename (dirname $VIRTUAL_ENV))
	set base (basename "$VIRTUAL_ENV" )
	set last_two_dirs "$d2/$base"  
        set --local virtualenv  "$last_two_dirs"
        set --local virtualenv_color "$pure_color_virtualenv"

        echo "$virtualenv_color$virtualenv"
    end
end
