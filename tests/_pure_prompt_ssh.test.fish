source $DIRNAME/../functions/_pure_prompt_ssh.fish
source $DIRNAME/../functions/_pure_prompt_ssh_user.fish
source $DIRNAME/../functions/_pure_prompt_ssh_separator.fish
source $DIRNAME/../functions/_pure_prompt_ssh_host.fish
source $DIRNAME/../tools/versions-compare.fish

set --local empty ''

test "_pure_prompt_ssh: hide 'user@hostname' when working locally"
    (
        set --erase SSH_CONNECTION

        _pure_prompt_ssh

    ) $status -eq 0
end

if fish_version_below '3.0.0'
test "_pure_prompt_ssh: displays 'user@hostname' when on SSH connection"
    (
        set pure_color_ssh_user_normal $empty
        set pure_color_ssh_separator $empty
        set pure_color_ssh_host $empty
        set SSH_CONNECTION 127.0.0.1 56422 127.0.0.1 22
        function whoami; echo 'user'; end # mock
        set hostname 'hostname'

        _pure_prompt_ssh

    ) = 'user@hostname'
end
end

if fish_version_at_least '3.0.0'
test "_pure_prompt_ssh: displays 'user@[\w]+' when on SSH connection"
    (
        set pure_color_ssh_user_normal $empty
        set pure_color_ssh_separator $empty
        set pure_color_ssh_host $empty
        set SSH_CONNECTION 127.0.0.1 56422 127.0.0.1 22
        function whoami; echo 'user'; end # mock

        set prompt_ssh_host (_pure_prompt_ssh)
        string match --quiet --regex 'user@[\w]+' $prompt_ssh_host  
        # $hostname is read-only, we can't determine it preceisely (e.g. is dynamic in docker container)
    ) $status -eq 0
end
end