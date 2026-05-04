def mode_completer [] {
  ["local_to_repo" "repo_to_local"]
}

export def dotfiles_sync [mode: string@mode_completer] {
  let script = ([$env.NUSHELL_CONFIG_PATH, "scripts", "dotfiles_tool.nu"] | path join)

  let env_map = (
    $env
    | select DOTFILES_REPO? HOME? NUSHELL_CONFIG_PATH? VIM_CONFIG_PATH?
    | insert DOTFILES_STANDALONE_CONFIGS ($env.DOTFILES_STANDALONE_CONFIGS | to json)
  )

  match $mode {
    "local_to_repo" => { with-env $env_map { nu $script local_to_repo } }
    "repo_to_local" => { with-env $env_map { nu $script repo_to_local } }
    _ => { error make "Invalid mode... Expected: local_to_repo or repo_to_local" }
  }
}