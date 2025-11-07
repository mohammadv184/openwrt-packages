.PHONY: update-packages
# update-packages updates all git submodules
update-packages:
ifeq (, $(shell which git))
	$(error "git is not available please install git")
else
	$(info ********************* updating modules *********************)
	@git submodule update --init --recursive --remote
endif


.PHONY: update-%
# update-% updates the provided package
update-%:
ifeq (, $(shell which git))
	$(error "git is not available please install git")
else
	$(info ********************* updating modules *********************)
	@git submodule update --init --recursive --remote -- $*
endif

