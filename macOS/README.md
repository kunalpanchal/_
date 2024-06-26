# macOS setup & tips


## Initial setup mandatory changes
 - Enable three finger drag and drop - System Preference -> Accessibility -> Pointer Control -> Trackpad option -> Enable Three finger.
 - Install ZSH and install the theme `spaceship`
 - Update the `.zshrc` file in `~` from [_/macOs/.zshrc](https://github.com/kunalpanchal/_/blob/master/macOS/.zshrc)

## Performance optimization

1. Disable spotlight - its one of the high CPU high disk read processes, which keeps indexing files that are changing on disk.
https://www.technipages.com/macos-sierra-enable-disable-spotlight

2. `preferences -> mission control -> dashboard -> set to off`
3. `preferences -> accesibility -> general -> untick all`
4. `preferences -> accesibility -> display -> tick reduce motion and tick reduce transparency`
5. `preferences -> users and accounts -> your account -> login items -> disable unwanted`

## Keyboard
 - Go to system Preferences and update the keyboard settings to **Key Repeat = fast** and **Delay Untill Repeat = short**

```bash
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false # disable for VScode only
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false # disables globally
```

## Setup ZSH

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

## Tools and softwares

- [Lunar](https://lunar.fyi) or [MonitorControl](https://github.com/MonitorControl/MonitorControl): external monitor brightness control
- [Nightfall](https://github.com/r-thomson/Nightfall): easy dark mode toggle
- https://rectangleapp.com/
- [clocker menu bar app](https://apps.apple.com/us/app/clocker/id1056643111?mt=12)
- [Aerial Screensaver app](https://aerialscreensaver.github.io/installation.html)
