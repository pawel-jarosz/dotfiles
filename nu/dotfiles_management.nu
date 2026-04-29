def mode_completer [] {
  ["local_to_repo" "repo_to_local"]
}

def dotfiles_sync_local_to_repo [] {
  echo "Syncing local configurations to repository..."
  rclone sync $env.NUSHELL_CONFIG_PATH ([$env.DOTFILES_REPO "nu"] | path join)
  rclone sync $env.VIM_CONFIG_PATH ([$env.DOTFILES_REPO "nvim"] | path join)
}

def dotfiles_sync_repo_to_local [] {
  echo "Syncing repository to local environment..."
  rclone sync ([$env.DOTFILES_REPO "nu"] | path join) $env.NUSHELL_CONFIG_PATH
  rclone sync ([$env.DOTFILES_REPO "nvim"] | path join) $env.VIM_CONFIG_PATH
}

export def dotfiles_sync [mode: string@mode_completer] {
  match $mode {
    "local_to_repo" => { dotfiles_sync_local_to_repo }
    "repo_to_local" => { dotfiles_sync_repo_to_local }
    _ => { error make "Invalid mode... Expected: local_to_repo or repo_to_local" }
  }
}

