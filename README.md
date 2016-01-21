ZSH
===
After realizing that my zsh config had grown to such great proportions, it
decided to create a git repo of its own so it didn't make all the other config
files in [my configs](https://github.com/ZirroStig/configs) feel inadequate.

Install/Update
--------------
Running `make` will do the following
- git clone/pull for all my plugins
- generate a plugins.zsh that is sourced by zshrc
- clone/pull and build stderred
- symlink zshrc to $HOME/.zshrc 

Todo
----
- Customize my prompt. The boring one in place now is my punishment for not updating it yet.
- Cleanup Makefiles to be less repetitive

