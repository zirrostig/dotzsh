cwd=$(shell pwd)
all: clobber update

clobber:
	rm -f 00-plugins.zsh
	rm -f 90-plugins.zsh

update: agkozak-zsh-prompt-update zsh-256color-update zsh-autosuggestions-update zsh-bd-update zsh-colors-update zsh-functional-update zsh-syntax-highlighting-update zsh-history-substring-search-update k-update zaw-update

agkozak-zsh-prompt-update: agkozak-zsh-prompt
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> 00-plugins.zsh

zsh-256color-update: zsh-256color
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> 00-plugins.zsh

zsh-autosuggestions-update: zsh-autosuggestions
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> 00-plugins.zsh

zsh-bd-update: zsh-bd
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> 00-plugins.zsh

zsh-colors-update: zsh-colors
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> 00-plugins.zsh

zsh-functional-update: zsh-functional
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> 00-plugins.zsh

zsh-syntax-highlighting-update: zsh-syntax-highlighting
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> 90-plugins.zsh

zsh-history-substring-search-update: zsh-history-substring-search
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</zsh-history-substring-search.zsh" >> 00-plugins.zsh

zaw-update: zaw
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> 90-plugins.zsh

k-update: k
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null
	@echo "source $(cwd)/$</*.plugin.zsh" >> 00-plugins.zsh


pull: agkozak-zsh-prompt zsh-256color zsh-autosuggestions zsh-bd zsh-colors zsh-functional zsh-syntax-highlighting zsh-history-substring-search zaw k

agkozak-zsh-prompt:
	@echo git clone $@
	@git clone https://github.com/agkozak/agkozak-zsh-prompt 2>/dev/null >/dev/null

zsh-256color:
	@echo git clone $@
	@git clone https://github.com/chrissicool/zsh-256color 2>/dev/null >/dev/null

zsh-autosuggestions:
	@echo git clone $@
	@git clone https://github.com/zsh-users/zsh-autosuggestions 2>/dev/null >/dev/null

zsh-bd:
	@echo git clone $@
	@git clone https://github.com/Tarrasch/zsh-bd 2>/dev/null >/dev/null

zsh-colors:
	@echo git clone $@
	@git clone https://github.com/Tarrasch/zsh-colors 2>/dev/null >/dev/null

zsh-functional:
	@echo git clone $@
	@git clone https://github.com/Tarrasch/zsh-functional 2>/dev/null >/dev/null

zsh-syntax-highlighting:
	@echo git clone $@
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting 2>/dev/null >/dev/null

zsh-history-substring-search:
	@echo git clone $@
	@git clone https://github.com/zsh-users/zsh-history-substring-search 2>/dev/null >/dev/null

zaw:
	@echo git clone $@
	@git clone https://github.com/zsh-users/zaw 2>/dev/null >/dev/null

k:
	@echo git clone $@
	@git clone https://github.com/zirrostig/k 2>/dev/null >/dev/null

clean:
	rm -f plugins.zsh
	rm -rf agkozak-zsh-prompt
	rm -rf zsh-256color
	rm -rf zsh-bd
	rm -rf zsh-colors
	rm -rf zsh-functional
	rm -rf zsh-syntax-highlighting
	rm -rf zsh-history-substring-search
	rm -rf zaw
	rm -rf k
