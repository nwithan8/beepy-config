## help - Display help about make targets for this Makefile
help:
	@cat Makefile | grep '^## ' --color=never | cut -c4- | sed -e "`printf 's/ - /\t- /;'`" | column -s "`printf '\t'`" -t

## install - Setup Beepy Config
install:
	chmod +x ./scripts/* && chmod +x ./beepy-config && ./scripts/install_beepy_config

## config - Run Beepy Config
config:
	./beepy-config

