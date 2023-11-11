NAME_DIRECTORY=$(notdir $(CURDIR))
NAME_HIDDEN_DIRECTORY=$(addprefix .,$(NAME_DIRECTORY))

init: ## genera un enlace simbólico del proyecto en ~/.makefiles-utils a modo de punto de acceso global/compartido
	ln --verbose --symbolic $(CURDIR) $(HOME)/ \
	&& mv --verbose $(HOME)/$(NAME_DIRECTORY) $(HOME)/$(NAME_HIDDEN_DIRECTORY)
