# ansible-linux-setup
Initial Debian-based distro setup tasks.
For usage on locahost.
VPN setup: https://protonvpn.com/support/linux-vpn-setup/
Graphics Driver Package: nvidia-driver

## Usage
```ansible-playbook -vK roles/dev.yml```

## TODO
- /etc/default/grub GRUB_TIMEOUT=2 && update-grub
- Test Firefox config
- Enable 32-bit support (Debian)
- Set DNS provider
- Update tor version (probably refactor version #s to vars anyway)
- Have plays extract checksums from the file - avoid manually finding and updating checksums every time

## Credit
vim theme: https://github.com/ErichDonGubler/vim-sublime-monokai
