all: plugins-dir stderred-make symlink

plugins-dir:
	$(MAKE) -C plugins

stderred-make: stderred-update
	$(MAKE) -C stderred

stderred-update: stderred
	@echo git pull $<
	@git -C $< pull 2>/dev/null >/dev/null

stderred:
	@echo git clone $@
	@git clone https://github.com/sickill/stderred stderred 2>/dev/null >/dev/null

symlink:
	ln -sfv $(PWD)/zshrc $(HOME)/.zshrc

clean:
	$(MAKE) -C stderred clean
	$(MAKE) -C plugins clean
