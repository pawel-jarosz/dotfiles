def dotfiles_sync_local_to_repo [] {
  echo "Syncing local configurations to repository..."

  rclone sync $env.NUSHELL_CONFIG_PATH ([$env.DOTFILES_REPO "nu"] | path join)
  rclone sync $env.VIM_CONFIG_PATH ([$env.DOTFILES_REPO "nvim"] | path join)
  
  let standalone = (
    if ($env.DOTFILES_STANDALONE_CONFIGS | describe) == "string" {
      $env.DOTFILES_STANDALONE_CONFIGS | from json
    } else {
      $env.DOTFILES_STANDALONE_CONFIGS
    }
  )

  for $file in $standalone {
    try {
      rm ([$env.DOTFILES_REPO $file] | path join)
    } catch { |err| echo $err.msg }

    cp ([$env.HOME $file] | path join) $env.DOTFILES_REPO
  }
}

def dotfiles_sync_repo_to_local [] {
  echo "Syncing repository to local environment..."

  rclone sync ([$env.DOTFILES_REPO "nu"] | path join) $env.NUSHELL_CONFIG_PATH
  rclone sync ([$env.DOTFILES_REPO "nvim"] | path join) $env.VIM_CONFIG_PATH

  let standalone = (
    if ($env.DOTFILES_STANDALONE_CONFIGS | describe) == "string" {
      $env.DOTFILES_STANDALONE_CONFIGS | from json
    } else {
      $env.DOTFILES_STANDALONE_CONFIGS
    }
  )

  for $file in $standalone {
    try {
      rm ([$env.HOME $file] | path join)
    } catch { |err|
      echo $err.msg
    }
    cp ([$env.DOTFILES_REPO $file] | path join) ([$env.HOME $file] | path join)
  }
}


def main [$mode: string] {
    match $mode {
        "local_to_repo" => { dotfiles_sync_local_to_repo }
        "repo_to_local" => { dotfiles_sync_repo_to_local }
        _ => { error make "Invalid mode... Expected: local_to_repo or repo_to_local" }
  }
}
