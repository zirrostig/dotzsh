.PHONY: zsh-syntax-highlighting-update zsh-history-substring-search-update k-update zsh-poetry-update
cwd=$(shell pwd)

all: clobber update

clobber:
	rm -f 00-plugins.zsh
	rm -f 90-plugins.zsh

update: zsh-syntax-highlighting-update zsh-history-substring-search-update k-update zsh-poetry-update

zsh-syntax-highlighting-update: zsh-syntax-highlighting
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> 90-plugins.zsh

zsh-history-substring-search-update: zsh-history-substring-search
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</zsh-history-substring-search.zsh" >> 00-plugins.zsh

k-update: k
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> 00-plugins.zsh

zsh-poetry-update: zsh-poetry
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> 00-plugins.zsh

pull: zsh-syntax-highlighting zsh-history-substring-search k

zsh-syntax-highlighting:
	@echo git clone $@
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting 2>/dev/null >/dev/null

zsh-history-substring-search:
	@echo git clone $@
	@git clone https://github.com/zsh-users/zsh-history-substring-search 2>/dev/null >/dev/null

k:
	@echo git clone $@
	@git clone https://github.com/zirrostig/k 2>/dev/null >/dev/null

zsh-poetry:
	@echo git clone $@
	@git clone https://github.com/darvid/zsh-poetry 2>/dev/null >/dev/null

clean:
	rm -f plugins.zsh
	rm -rf zsh-syntax-highlighting
	rm -rf zsh-history-substring-search
	rm -rf k
	rm -rf zsh-poetry
