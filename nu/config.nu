oh-my-posh init nu --config fish

let os = (sys host | get name)

if $os == "Windows" {
  overlay use windows_overlay.nu
}

overlay use dotfiles_management.nu

