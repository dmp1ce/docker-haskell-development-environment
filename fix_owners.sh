#!/bin/bash

# Fixes the ownership for the code directory caused by Docker creating files as root
sudo chown -R $UID:$GROUPS code
