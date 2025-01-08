# toolconfig
Basic settings to save time configuring a new machine

## Scripts
- `cpb` - Copy branch name to clipboard
- `sep` - Print a separator
- `gst` - "**g**it **st**atus" but shorter and the branch name is highlighted
- `purgespm` - Delete local and global caches of Swift Package Manager, including derived data and security fingerprints
- `hideme` - Hide current user and host name from terminal prompt and pwd. Needs to be sourced (for example, like in `.zshrc`)
- `nvimconfig` - Install Neovim configs into `~/.config` directory and set its user config subdirectory to the current user. Convenience script, __should run from the `scripts` directory.__
- `fetchall` - Fetches all the repos in the repos directory. For now, need to replace the `$REPOS_DIR` to point to the custom directory where the repose are stored.

## Commands
- `mkdj` - Make directory and jump into it, convenience function in `.zshrc`
