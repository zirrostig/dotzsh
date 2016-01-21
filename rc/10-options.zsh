#!/bin/zsh

# man zshoptions

###########
# Options #
###########

####################
# Directories
setopt AUTO_CD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_TO_HOME

####################
# Completion
setopt ALWAYS_TO_END
setopt AUTO_LIST
setopt AUTO_NAME_DIRS
setopt AUTO_PARAM_KEYS
setopt AUTO_PARAM_SLASH
setopt AUTO_REMOVE_SLASH
#setopt COMPLETE_ALIASES
#setopt GLOB_COMPLETE
setopt LIST_AMBIGUOUS
setopt LIST_PACKED
setopt LIST_TYPES
#setopt REC_EXACT

####################
# Expansion
setopt BAD_PATTERN
setopt BARE_GLOB_QUAL
#setopt BRACE_CCL
setopt CASE_GLOB
setopt CASE_MATCH
setopt EQUALS
setopt EXTENDED_GLOB
setopt GLOB
setopt MULTIBYTE
setopt NOMATCH
setopt NUMERIC_GLOB_SORT
setopt RC_EXPAND_PARAM
setopt REMATCH_PCRE
#setopt WARN_CREATE_GLOBAL

####################
# History
setopt APPEND_HISTORY
setopt BANG_HIST
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS

####################
# Input/Output
setopt ALIASES
setopt CLOBBER
setopt DVORAK # Useless unless I enable CORRECT
setopt HASH_CMDS
setopt HASH_DIRS
setopt MAIL_WARNING
setopt PATH_DIRS
setopt RC_QUOTES
setopt SHORT_LOOPS

####################
# Jobs
setopt AUTO_CONTINUE
setopt AUTO_RESUME
unsetopt BG_NICE
setopt CHECK_JOBS
setopt HUP
setopt LONG_LIST_JOBS
unsetopt NOTIFY

####################
# Prompt
# Found in rc/50-prompt.zsh

####################
# Scripting
setopt C_BASES
setopt C_PRECEDENCES
unsetopt EVAL_LINENO
setopt FUNCTION_ARGZERO
setopt LOCAL_LOOPS
setopt MULTI_FUNC_DEF
setopt MULTIOS
setopt OCTAL_ZEROES
setopt BSD_ECHO

####################
# ZLE
setopt COMBINING_CHARS
setopt ZLE
