#!/usr/bin/env bash
set -o pipefail
set -o errexit
set -o nounset
set -o verbose
set -o xtrace

# install trunk
sudo -u aurbuilder -D~ bash -c "yay -Syu --noconfirm --removemake --needed --noprogressbar trunk"

# clean cache
sudo -u aurbuilder -D~ bash -c "yes | yay -Scc"
