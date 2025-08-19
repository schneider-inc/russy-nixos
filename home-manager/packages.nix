{ pkgs, ... }:
{
  home.packages = [
    pkgs.lua
    pkgs.git
    pkgs.python313
    pkgs.python313Packages.pip
    pkgs.qmk
    pkgs.pyright
    pkgs.haskellPackages.ghc
    pkgs.haskellPackages.cabal-install
    pkgs.haskellPackages.stack
    pkgs.haskellPackages.haskell-language-server
    pkgs.nil
    pkgs.elmPackages.elm
    pkgs.elmPackages.elm-language-server
    pkgs.typescript-language-server
    pkgs.nodejs
    pkgs.arduino-language-server
    pkgs.bash-language-server
    pkgs.nixfmt-classic
    pkgs.gcc
    pkgs.rustup
    pkgs.waybar
    pkgs.wofi
    pkgs.hyprpaper
    pkgs.hyprlock
    pkgs.hypridle
    pkgs.hyprcursor
    pkgs.hyprpolkitagent
    pkgs.wofi-emoji
    pkgs.swaynotificationcenter
    pkgs.grim
    pkgs.kdePackages.dolphin
    pkgs.superfile
    pkgs.ranger
    pkgs.kdePackages.qtwayland
    pkgs.auto-cpufreq
    pkgs.autojump
    pkgs.guvcview
    pkgs.cameractrls-gtk3
    pkgs.syncthing
    pkgs.fzf
    pkgs.busybox
    pkgs.pavucontrol
    pkgs.easyeffects
    pkgs.nh
    pkgs.localsend
    pkgs.neofetch
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
}
