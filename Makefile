## help - Display help about make targets for this Makefile
help:
	@cat Makefile | grep '^## ' --color=never | cut -c4- | sed -e "`printf 's/ - /\t- /;'`" | column -s "`printf '\t'`" -t

## install - Setup Beepy Config
install:
	curl -s https://raw.githubusercontent.com/nwithan8/beepy-config/master/scripts/install_beepy_config | bash

## install-testing - Setup Beepy Config (Testing)
install-testing:
	chmod +x ./scripts/install_beepy_config && ./scripts/install_beepy_config

## drivers - Install Beepy Drivers
drivers:
	curl -s https://raw.githubusercontent.com/nwithan8/beepy-config/master/scripts/install_beepy_drivers | bash

## drivers-testing - Install Beepy Drivers (Testing)
drivers-testing:
	chmod +x ./scripts/install_beepy_drivers && ./scripts/install_beepy_drivers

## config - Run Beepy Config
config:
	curl -s https://raw.githubusercontent.com/nwithan8/beepy-config/master/scripts/run_beepy_config | bash

## config-testing - Run Beepy Config (Testing)
config-testing:
	chmod +x ./beepy_config && ./beepy_config

