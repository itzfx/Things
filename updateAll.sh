# For Ubuntu/Debian (really, any apt-get based system).
# Just call `sudo ./updateAll.sh` instead of doing all these separately all the
# time.

apt-get update \
    && apt-get upgrade --yes \
    && apt-get dist-upgrade --yes \
    && apt-get autoremove --yes \
    && apt-file update  # This will fail if apt-file isn't installed, no biggie.
