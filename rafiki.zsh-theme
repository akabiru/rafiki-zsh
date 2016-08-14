good=( 💪 👉 👊 😎 🔥 😄 )
bad=( 🙄 😡 😕 🖕 😟 😳 )

G=${#good[@]}
B=${#bad[@]}

((G=(RANDOM%G)+1))
((B=(RANDOM%B)+1))

RANDOM_GOOD=${good_cmds[$G]}
RANDOM_BAD=${bad_cmds[$B]}

local message="$fg_bold[green]$RANDOM_GOOD  I'm your friend today. $fg_bold[red]$RANDOM_BAD  I'm not your friend."

echo "${message}"

local ret_status="%(?:%{$fg_bold[green]%}$RANDOM_GOOD :%{$fg_bold[red]%}$RANDOM_BAD )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
