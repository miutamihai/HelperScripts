# Description
This script adds a new systemd service (called optimus-manager) that switches to use your dedicated Nvidia GPU upon startup

# Running
`./add-optimus-service.sh` - *IMPORTANT* do not use `sudo`

After running the script, you can either restart your system or run `systemctl --user start optimus-manager.service` and then your graphics card should be set to `nvidia`

# Caveats

Optimus manager is unfortunately not compatible with `Wayland`
