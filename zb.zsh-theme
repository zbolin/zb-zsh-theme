function get_aws_profile {
    if [ -z "$AWS_PROFILE" ]; then
      echo ""
    elif [[ "$AWS_PROFILE" == *"prod"* ]]; then
      echo "%{$fg_bold[blue]%}aws:(%{$fg_bold[red]%}$(agp)%{$fg_bold[blue]%})%{$reset_color%} "
    else
      echo "%{$fg_bold[blue]%}aws:(%{$fg_bold[green]%}$(agp)%{$fg_bold[blue]%})%{$reset_color%} "
    fi
}


PROMPT='%{$fg_bold[green]%}%h %{$fg[cyan]%}%2~ $(get_aws_profile)%{$reset_color%}» '
RPROMPT=''

ZSH_THEME_AWS_PROFILE_PREFIX="aws:(%{$fg[red]%}"
ZSH_THEME_AWS_PROFILE_SUFFIX="%{$reset_color%}"
ZSH_THEME_AWS_REGION_PREFIX=""
ZSH_THEME_AWS_REGION_SUFFIX=""

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
