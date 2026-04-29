 export-env {
    $env.HOME = $env.USERPROFILE
    $env.DOTFILES_REPO = ($env.USERPROFILE | path join ".dotfiles")
    $env.NUSHELL_CONFIG_PATH = ($env.APPDATA | path join "nushell")
    $env.VIM_CONFIG_PATH = ($env.LOCALAPPDATA | path join "nvim")
 }

