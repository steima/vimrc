#!/bin/bash

die() {
	echo >&2 "$@"
	exit 1
}

# directory name
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SETUP_FILE="${DIR}/setup.sh"
VIMRC_FILE="${DIR}/vimrc"
BUNDLE_DIR="${DIR}/bundle"
UPDATE_BUNDLES="${DIR}/update_bundles"

[ -e "${SETUP_FILE}" ] && [ -e "${VIMRC_FILE}" ] || die "It appears that you did not checkout https://github.com/steima/vimrc.git to your ~/.vim directory"

[ -e "${BUNDLE_DIR}" ] || mkdir -p "${BUNDLE_DIR}"
chmod +x "${UPDATE_BUNDLES}"
"${UPDATE_BUNDLES}"

[ -e "~/.vimrc" ] || die "A ~/.vimrc file already exists. This can mean two things (1) you already ran this script before and ~/.vimrc is already a link to the GIT managed ~/.vim/vimrc file, or (2) you have a ~/.vimrc file with your config. In the latter case backup and remove the file and rerun ${SETUP_FILE}."
