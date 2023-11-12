DIR_NAME=$(notdir $(CURDIR))

ifeq ("$(DIR_NAME)","makefile-utils")
include helper.mk
include utils.mk
include commands.mk
include init.mk
else
include ~/.makefile-utils/config.mk
include $(DIR_MAKEFILE_UTILS)/helper.mk
include $(DIR_MAKEFILE_UTILS)/commands.mk
include $(DIR_MAKEFILE_UTILS)/utils.mk
endif
