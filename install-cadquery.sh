#!/usr/bin/env bash
set -o pipefail
set -o errexit
set -o nounset
set -o verbose
set -o xtrace

# install 
sudo -u aurbuilder -D~ bash -c "yay -Syu --noconfirm --removemake --needed --noprogressbar python-ocp"
sudo -u aurbuilder -D~ bash -c "yay -Syu --noconfirm --removemake --needed --noprogressbar python-cadquery"

# clean cache
sudo -u aurbuilder -D~ bash -c "yes | yay -Scc"
