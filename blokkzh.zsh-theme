# ZSH Theme - TODO: Preview
# Mod of the gnzh theme

setopt prompt_subst

() {

local PR_USER PR_USER_OP PR_PROMPT PR_HOST PR_AT

# Check the UID
if [[ $UID -ne 0 ]]; then # normal user
  PR_USER='%F{yellow}%n%f'
  PR_USER_OP='%F{yellow}%#%f'
  PR_PROMPT='%f➤ %f'
  PR_AT='@'
else # root
  PR_USER=''
  PR_USER_OP='%F{red}%#%f'
  PR_PROMPT='%F{red}➤ %f'
  PR_AT=''
fi

# Check if we are on SSH or not
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
  PR_HOST='%F{magenta}%M%f' # SSH
elif [[ $UID -eq 0 ]]; then
  PR_HOST='%F{red}%M%f' # no SSH, root
else
  PR_HOST='%F{cyan}%M%f' # no SSH, normal user
fi


local return_code="%(?..%F{red}%? ↵%f)"

local user_host="${PR_USER}${PR_AT}${PR_HOST}"
local current_dir="%B%F{blue}%~%f%b"
local rvm_ruby=''
if ${HOME}/.rvm/bin/rvm-prompt &> /dev/null; then # detect user-local rvm installation
  rvm_ruby='─[rvm: %F{red}$(${HOME}/.rvm/bin/rvm-prompt i v g s)%f]'
elif which rvm-prompt &> /dev/null; then # detect system-wide rvm installation
  rvm_ruby='─[rvm: %F{red}$(rvm-prompt i v g s)%f]'
elif which rbenv &> /dev/null; then # detect Simple Ruby Version Management
  rvm_ruby='─[rvm: %F{red}$(rbenv version | sed -e "s/ (set.*$//")%f]'
fi

local git_branch='$(git_prompt_info)'
local venv_python='$(virtualenv_prompt_info)'

PROMPT="┌─[${user_host}]─[${current_dir}]${rvm_ruby}${venv_python}${git_branch}
└─$PR_PROMPT "
RPROMPT="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="─[git: %F{yellow}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f]"
ZSH_THEME_VIRTUALENV_PREFIX="─[%F{green}"
ZSH_THEME_VIRTUALENV_SUFFIX="%f]"

}

