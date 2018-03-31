Fork from https://github.com/SandraK82/deploy-ns-local-raspi
See there for further details

install nightscout on your own debian webserver (including mongodb)

git clone https://github.com/viderehh/deploy-nightscout-local-debain
deploy-nightscout-local-debain/ns-local-install.sh

before start your nightscout
edit /opt/start-nightscout.sh
change CUSTOM_TITLE=mysitename_without_space
and API_SECRET=my_24_characters_or_more_password
