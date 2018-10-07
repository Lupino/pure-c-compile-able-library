default: main
.PHONY: default

PUREC_DIR := ../..
export PATH := $(PUREC_DIR)/node_modules/.bin:$(PATH)
include $(PUREC_DIR)/mk/target.mk

SHELL := /bin/bash
srcs := ./src
deps := $(shell\
	find ../bower_components/purescript-{control,effect,prelude,console,either,foldable-traversable,orders,newtype,maybe,invariant,bifunctors,transformers,identity,tuples,type-equality,distributive,unfoldable,partial,lazy,tailrec,refs}/src/\
	    -type f\
	    -name '*.purs')
$(eval $(call purs_mk_target,main,Main,$(srcs),$(deps)))
