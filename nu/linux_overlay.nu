export-env {
    $env.DOTFILES_STANDALONE_CONFIGS = ($env.DOTFILES_STANDALONE_CONFIGS | prepend ".gdbinit")
    $env.NUSHELL_CONFIG_PATH = ([$env.HOME ".config"] | path join "nushell")
}
