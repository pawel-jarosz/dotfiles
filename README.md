# ReadMe

## Configuration

At first, please clone repository on Windows in your user directory, on Linux in ~/.config/ directory.

```bash
git clone git@github.com:pawel-jarosz/dotfiles.git .dotfiles
```
## Windows specific

Custom tools configuration

### Windows Terminal

Add entry for `nushell`

```json
 {
    "commandline": "C:\\Users\\jaros\\AppData\\Local\\Programs\\nu\\bin\\nu.exe",
    "guid": "{e4af30cb-0e77-41f6-b58b-86b438889004}",
    "hidden": false,
    "name": "Nu Shell",
    "icon": "C:\\Users\\jaros\\AppData\\Local\\Programs\\nu\\nu.ico"
}
```

*guid* field value can be generated with *PowerShell* using `New-Guid`.


### Visual Studio

It is easier to install just *Visual Studio*, not only *Build Tools* as for some tools there is needed *Windows SDK*.

## Cross-platform tools

| Tool  | Package Manager | Description | Unix-world alternative |
|-------|-----------------|-------------|--------------|
| Zellij | cargo | terminal multiplexer| tmux, screen |
| Rclone | OS-specific | file synchronization | rsync |
| Bottom | cargo | performance viewer | top, htop |
| Bat | cargo | file viewer | cat |
| Eva | cargo | REPL for calculator | bt |
| Zoxide | cargo | smart change directory | cd |
| fd | cargo | modern find replacement | fd |
| ripgrep | cargo | modern grep replacement | grep |
| Delta | cargo | better git diff | git-diff |
| Difftastic | OS-specific | cross-platform diff | diff |
| Hexyl | cargo | cross-platform hexdump alternative | hexdump |
| sd | cargo | cross-platform sed replacement | sed |
