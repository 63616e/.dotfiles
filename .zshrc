
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
# export PATH="/usr/local/anaconda3/bin:$PATH"  # commented out by conda initialize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/hakancangunerli/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/hakancangunerli/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/hakancangunerli/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/hakancangunerli/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


brew() {
    local conda_env="$CONDA_DEFAULT_ENV"
    while [ "$CONDA_SHLVL" -gt 0  ]; do
        conda deactivate
    done
    command brew $@
    local brew_status=$?
    [ -n "${conda_env:+x}" ] && conda activate "$conda_env"
    return "$brew_status"
}

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
