# macOS tips


## Initial setup mandatory changes
 - Go to system Preferences and update the keyboard settings to **Key Repeat = fast** and **Delay Untill Repeat = short**
 - Install ZSH and install the theme `spaceship`
 - Update the `.zshrc` file in `~` from [_](https://github.com/kunalpanchal/_)


## Performance optimization

1. Disable spotlight - its one of the high CPU high disk read processes, which keeps indexing files that are changing on disk.
https://www.technipages.com/macos-sierra-enable-disable-spotlight

2. `preferences -> mission control -> dashboard -> set to off`
3. `preferences -> accesibility -> general -> untick all`
4. `preferences -> accesibility -> display -> tick reduce motion and tick reduce transparency`
5. `preferences -> users and accounts -> your account -> login items -> disable unwanted`