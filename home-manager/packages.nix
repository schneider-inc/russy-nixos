{ pkgs, ... }: {
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # don't forget to install these flatpak packages:
    # flatpak install com.mastermindzh.tidal-hifi dev.vencord.Vesktopdev.vencord.Vesktop 
    pkgs.vivaldi
    pkgs.brave
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
    # pkgs.wofi
    # pkgs.wofi-emoji
    # pkgs.rofi
    # pkgs.rofi-emoji
    pkgs.hyprpaper
    pkgs.hyprlock
    pkgs.hypridle
    pkgs.hyprcursor
    pkgs.hyprpicker
    pkgs.hyprpolkitagent
    pkgs.libnotify
    pkgs.wlr-randr
    pkgs.swaynotificationcenter
    pkgs.grim
    pkgs.slurp
    pkgs.wvkbd
    pkgs.vlc
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
    pkgs.usbutils
    pkgs.pavucontrol
    pkgs.easyeffects
    pkgs.nh
    pkgs.pure-prompt
    pkgs.localsend
    pkgs.fastfetch
    pkgs.wl-clipboard
    pkgs.copyq
    pkgs.fzf
    pkgs.socat
    pkgs.jq
    pkgs.lmstudio
    pkgs.remnote
    pkgs.libreoffice
    pkgs.distrobox
    pkgs.mullvad-vpn
    pkgs.flatpak
    pkgs.openconnect
    pkgs.protonvpn-gui
    pkgs.proton-pass
    pkgs.thunderbird
    pkgs.protonmail-desktop
    pkgs.rclone
    pkgs.rsync
    pkgs.signal-desktop
    pkgs.fractal
    pkgs.virtualbox
    pkgs.unzip
    pkgs.lutris
    pkgs.vipsdisp
    pkgs.nwg-displays
    pkgs.volantes-cursors
    pkgs.neofetch
    pkgs.veracrypt
    pkgs.vesktop
    pkgs.tidal-hifi
    pkgs.kazam
    pkgs.audacious
    pkgs.kdePackages.kdenlive
    pkgs.handbrake
    pkgs.gimp
    pkgs.libreoffice
    pkgs.obsidian
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
