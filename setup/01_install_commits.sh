#! /bin/bash

OURNAME=01_install_commits.sh

NODEREPO="node_20.x"
MONGODB="6.0"
CODENAME=`lsb_release -c -s`

WILDDUCK_COMMIT="24f7b5b6e5cc1a98636517d74bbc06bbc22fcfed"
ZONEMTA_COMMIT="8da489967209d81b88a42e7732e112a7e7262680" # zone-mta-template
WEBMAIL_COMMIT="41b7b0616986972943d33d661f18b2b127788bfd"
WILDDUCK_ZONEMTA_COMMIT="de6a181517263d72da4c07d19300f09c6f8a2428"
WILDDUCK_HARAKA_COMMIT="e81640db81e5407cac9dd9dbf542885377b26ab8"
HARAKA_VERSION="3.0.1"

echo -e "\n-- Executing ${ORANGE}${OURNAME}${NC} subscript --"
