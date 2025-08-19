{ config, pkgs, inputs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "z3ta";
  home.homeDirectory = "/home/z3ta";

  nixpkgs.config.allowUnfree = true;

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
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
    pkgs.lua
    pkgs.git
    pkgs.python313
    pkgs.python313Packages.pip
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
    pkgs.clipse
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
  ];

  services.kdeconnect.enable = true;

  programs.neovim = { enable = true; };

  programs.autojump.enable = true;
  programs.autojump.enableZshIntegration = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = { update = "sudo nixos-rebuild switch"; };

    oh-my-zsh = {
      enable = true;
      plugins = [ 
        "git" 
        "vi-mode" 
      ];
      theme = "aussiegeek";
    };
  };

  programs.git = {
    enable = true;
    userName = "schneider-inc";
    userEmail = "schneiderjus191@gmail.com";
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/z3ta/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.
}
