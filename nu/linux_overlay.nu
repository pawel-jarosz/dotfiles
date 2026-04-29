export-env {
    $env.DOTFILES_STANDALONE_CONFIGS = ($env.DOTFILES_STANDALONE_CONFIGS | prepend ".gdbinit")
}
