#!/usr/bin/bash

cp ./optimus-manager.service ~/.config/systemd/user
systemctl --user enable optimus-manager.service
systemctl --user status optimus-manager.service
