{ pkgs, ... }: {
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    pkgs.lua
    pkgs.git
    pkgs.python313
    pkgs.python313Packages.pip
    pkgs.qmk
    pkgs.qmk_hid
    pkgs.qmk-udev-rules
    pkgs.haskellPackages.ghc
    pkgs.haskellPackages.cabal-install
    pkgs.haskellPackages.stack
    pkgs.elmPackages.elm
    pkgs.haskellPackages.haskell-language-server
    pkgs.nil
    pkgs.pyright
    pkgs.elmPackages.elm-language-server
    pkgs.typescript-language-server
    pkgs.nodejs
    pkgs.arduino-language-server
    pkgs.bash-language-server
    pkgs.nixfmt-classic
    pkgs.clang-tools
    pkgs.lua-language-server
    pkgs.fd
    pkgs.ripgrep
    pkgs.gcc
    pkgs.rustup
    pkgs.go
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
    pkgs.kdePackages.kdegraphics-thumbnailers
    pkgs.kdePackages.ffmpegthumbs
    pkgs.libsForQt5.qtsvg
    pkgs.libsForQt5.kio-extras
    pkgs.superfile
    pkgs.ranger
    pkgs.kdePackages.qtwayland
    pkgs.auto-cpufreq
    pkgs.autojump
    pkgs.guvcview
    pkgs.cameractrls-gtk3
    pkgs.syncthing
    pkgs.fzf
    # pkgs.busybox
    pkgs.usbutils
    pkgs.pavucontrol
    pkgs.easyeffects
    pkgs.nh
    pkgs.pure-prompt
    pkgs.localsend
    pkgs.neofetch
    pkgs.wl-clipboard
    pkgs.copyq
    pkgs.fzf
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
