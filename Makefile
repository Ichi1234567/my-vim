# find out where ruby is. can override this by providing environment or command
# line variable
RUBY ?= $(shell ./find-ruby.sh)

update: install-vundle bundles compile-command-t

upgrade: upgrade-bundles compile-command-t

install: delete update

delete:
	@echo going to remove the bundle directory. press ENTER to continue.
	@read
	rm -rf bundle

install-vundle:
	test -d bundle/Vundle.vim || (mkdir -p bundle && cd bundle && git clone https://github.com/VundleVim/Vundle.vim.git)

bundles:
	vim -u ./bundles.vim +PluginClean! +PluginInstall

cleanup-bundles:
	ls bundle | while read b;do (cd bundle/$$b && git clean -f);done

upgrade-bundles: cleanup-bundles
	vim -u ./bundles.vim +PluginClean! +PluginInstall!

# only run compilation if bundle installed
compile-command-t:
	test ! -d bundle/Command-T || (cd bundle/Command-T/ruby/command-t/ && $(RUBY) extconf.rb && make)
