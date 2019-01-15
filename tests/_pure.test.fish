source $DIRNAME/../functions/_pure_set_default.fish

set --local empty ''

test "configure: pure_version" 
    (
        set --erase pure_version
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_version
    ) != $empty
end

test "configure: _pure_fresh_session" 
    (
        set --erase _pure_fresh_session
        source $DIRNAME/../conf.d/pure.fish
        echo $_pure_fresh_session
    ) = true
end

test "configure: VIRTUAL_ENV_DISABLE_PROMPT" 
    (
        set --erase VIRTUAL_ENV_DISABLE_PROMPT
        source $DIRNAME/../conf.d/pure.fish
        echo $VIRTUAL_ENV_DISABLE_PROMPT
    ) = 1
end

test "configure: pure_symbol_prompt" 
    (
        set --erase pure_symbol_prompt
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_symbol_prompt
    ) = "❯"
end

test "configure: pure_color_git_unpulled_commits" 
    (
        set --erase pure_color_git_unpulled_commits
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_git_unpulled_commits
    ) = "⇣"
end

test "configure: pure_symbol_git_unpushed_commits" 
    (
        set --erase pure_symbol_git_unpushed_commits
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_symbol_git_unpushed_commits
    ) = "⇡"
end

test "configure: pure_symbol_git_dirty" 
    (
        set --erase pure_symbol_git_dirty
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_symbol_git_dirty
    ) = "*"
end

test "configure: pure_symbol_horizontal_bar" 
    (
        set --erase pure_symbol_horizontal_bar
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_symbol_horizontal_bar
    ) = "—"
end

test "configure: pure_color_primary" 
    (
        set --erase pure_color_primary
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_primary
    ) = (set_color blue)
end

test "configure: pure_color_info" 
    (
        set --erase pure_color_info
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_info
    ) = (set_color cyan)
end

test "configure: pure_color_mute" 
    (
        set --erase pure_color_mute
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_mute
    ) = (set_color brblack)
end

test "configure: pure_color_success" 
    (
        set --erase pure_color_success
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_success
    ) = (set_color magenta)
end

test "configure: pure_color_normal" 
    (
        set --erase pure_color_normal
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_normal
    ) = (set_color normal)
end

test "configure: pure_color_danger" 
    (
        set --erase pure_color_danger
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_danger
    ) = (set_color red)
end

test "configure: pure_color_light" 
    (
        set --erase pure_color_light
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_light
    ) = (set_color white)
end

test "configure: pure_color_warning" 
    (
        set --erase pure_color_warning
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_warning
    ) = (set_color yellow)
end

test "configure: pure_color_command_duration" 
    (
        set --erase pure_color_command_duration
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_command_duration
    ) = (set_color yellow)
end

test "configure: pure_color_current_folder" 
    (
        set --erase pure_color_current_folder
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_current_folder
    ) = (set_color blue)
end

test "configure: pure_color_git_arrows" 
    (
        set --erase pure_color_git_arrows
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_git_arrows
    ) = (set_color cyan)
end

test "configure: pure_color_git_branch" 
    (
        set --erase pure_color_git_branch
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_git_branch
    ) = (set_color brblack)
end

test "configure: pure_color_git_dirty" 
    (
        set --erase pure_color_git_dirty
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_git_dirty
    ) = (set_color brblack)
end

test "configure: pure_color_ssh_host" 
    (
        set --erase pure_color_ssh_host
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_ssh_host
    ) = (set_color brblack)
end

test "configure: pure_color_ssh_separator" 
    (
        set --erase pure_color_ssh_separator
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_ssh_separator
    ) = (set_color brblack)
end

test "configure: pure_color_ssh_user_normal" 
    (
        set --erase pure_color_ssh_user_normal
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_ssh_user_normal
    ) = (set_color brblack)
end

test "configure: pure_color_ssh_user_root" 
    (
        set --erase pure_color_ssh_user_root
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_ssh_user_root
    ) = (set_color white)
end

test "configure: pure_color_prompt_on_error" 
    (
        set --erase pure_color_prompt_on_error
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_prompt_on_error
    ) = (set_color red)
end

test "configure: pure_color_prompt_on_success" 
    (
        set --erase pure_color_prompt_on_success
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_prompt_on_success
    ) = (set_color magenta)
end

test "configure: pure_color_virtualenv" 
    (
        set --erase pure_color_virtualenv
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_virtualenv
    ) = (set_color brblack)
end

test "configure: pure_prompt_begin_with_current_directory" 
    (
        set --erase pure_prompt_begin_with_current_directory
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_prompt_begin_with_current_directory
    ) = true
end

test "configure: pure_separate_prompt_on_error" 
    (
        set --erase pure_separate_prompt_on_error
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_separate_prompt_on_error
    ) = false
end

test "configure: pure_command_max_exec_time" 
    (
        set --erase pure_command_max_exec_time
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_command_max_exec_time
    ) = 5
end

test "configure: pure_right_prompt" 
    (
        set --erase pure_right_prompt
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_right_prompt
    ) = ""
end

test "configure: pure_color_right_prompt" 
    (
        set --erase pure_color_right_prompt
        source $DIRNAME/../conf.d/pure.fish
        echo $pure_color_right_prompt
    ) = (set_color normal)
end
