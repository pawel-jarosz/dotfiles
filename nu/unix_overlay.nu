export-env {
    $env.DOTFILES_REPO = ($env.HOME | path join ".dotfiles")
    $env.VIM_CONFIG_PATH = ([$env.HOME ".config"] | path join "nvim")
}
