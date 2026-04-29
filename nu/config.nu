oh-my-posh init nu --config fish

let os = (sys host | get name)
let long_os_version = (sys host | get long_os_version)
echo $long_os_version
$env.DOTFILES_STANDALONE_CONFIGS = [".gitconfig"]

if $os == "Windows" {
  overlay use windows_overlay.nu
} else if $os == "Darwin" or ($long_os_version | str starts-with --ignore-case "Linux") {
  overlay use unix_overlay.nu
}

if $os == "Darwin" {
  overlay use macos_overlay.nu
} else if ($long_os_version | str starts-with --ignore-case "Linux") {
  overlay use linux_overlay.nu
}

overlay use dotfiles_management.nu

