export-env {
    $env.NUSHELL_CONFIG_PATH = ([$env.HOME, "Library", "Application Support" "nushell"] | path join)
    $env.VIM_CONFIG_PATH = ([$env.HOME, ".config", "nvim"] | path join)
 }
