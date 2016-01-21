cwd=$(shell pwd)
all: clobber update

clobber:
	rm -f plugins.zsh

update: zsh-256color-update zsh-bd-update zsh-colors-update zsh-command-not-found-update zsh-functional-update zsh-syntax-highlighting-update zsh-history-substring-search-update k-update

zsh-256color-update: zsh-256color
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> plugins.zsh

zsh-bd-update: zsh-bd
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> plugins.zsh

zsh-colors-update: zsh-colors
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> plugins.zsh

zsh-command-not-found-update: zsh-command-not-found
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> plugins.zsh

zsh-functional-update: zsh-functional
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> plugins.zsh

zsh-syntax-highlighting-update: zsh-syntax-highlighting
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> plugins.zsh

zsh-history-substring-search-update: zsh-history-substring-search
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</zsh-history-substring-search.zsh" >> plugins.zsh

k-update: k
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> plugins.zsh


pull: zsh-256color zsh-bd zsh-colors zsh-command-not-found zsh-functional zsh-syntax-highlighting zsh-history-substring-search k

zsh-256color:
	@echo git clone $@
	@git clone https://github.com/chrissicool/zsh-256color 2>/dev/null >/dev/null

zsh-bd:
	@echo git clone $@
	@git clone https://github.com/Tarrasch/zsh-bd 2>/dev/null >/dev/null

zsh-colors:
	@echo git clone $@
	@git clone https://github.com/Tarrasch/zsh-colors 2>/dev/null >/dev/null

zsh-command-not-found:
	@echo git clone $@
	@git clone https://github.com/Tarrasch/zsh-command-not-found 2>/dev/null >/dev/null

zsh-functional:
	@echo git clone $@
	@git clone https://github.com/Tarrasch/zsh-functional 2>/dev/null >/dev/null

zsh-syntax-highlighting:
	@echo git clone $@
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting 2>/dev/null >/dev/null

zsh-history-substring-search:
	@echo git clone $@
	@git clone https://github.com/zsh-users/zsh-history-substring-search 2>/dev/null >/dev/null

k:
	@echo git clone $@
	@git clone https://github.com/zirrostig/k 2>/dev/null >/dev/null

clean:
	rm -f plugins.zsh
	rm -rf zsh-256color
	rm -rf zsh-bd
	rm -rf zsh-colors
	rm -rf zsh-command-not-found
	rm -rf zsh-functional
	rm -rf zsh-syntax-highlighting
	rm -rf zsh-history-substring-search
	rm -rf k
