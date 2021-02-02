#!/usr/bin/env bash
set -o pipefail
set -o errexit
set -o nounset
set -o verbose
set -o xtrace

suffix=$1

# install
sudo -u ab -D~ bash -c "yay -Syu --noconfirm --removemake --needed --noprogressbar python-joblib1"
sudo -u ab -D~ bash -c "yay -Syu --noconfirm --removemake --needed --noprogressbar python-ocp${suffix}"
sudo -u ab -D~ bash -c "yay -Syu --noconfirm --removemake --needed --noprogressbar python-cadquery${suffix}"

# clean cache
sudo -u ab -D~ bash -c "yes | yay -Scc"
