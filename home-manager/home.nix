{ config, pkgs, lib, inputs, outputs, ... }: {
  imports = [ ./packages.nix ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "z3ta";
  home.homeDirectory = "/home/z3ta";

  nixpkgs.config.allowUnfree = true;

  services.kdeconnect = {
    enable = true;
    indicator = true;
  };

  programs.neovim = { enable = true; };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      nupdate = "sudo nixos-rebuild switch";
      nupgrade = "sudo nixos-rebuild switch --upgrade";
      hupdate = "home-manager switch --flake /etc/nixos#z3ta@russy";
      fupdate = "sudo nix flake update --flake /etc/nixos";
      nvimnixos = "cd /etc/nixos/ && sudo -E -s nvim .";
      nvimdots = "cd ~/justy_files/configs/dotfiles/ && sudo -E -s nvim .";
      pulldots = "cd ~/justy_files/configs/dotfiles/ && git pull";
      pushbasic = "git add *; git commit; git push";
      clean = "nh clean all --keep 3";
      contuw =
        "sudo openconnect --user e12413076@student.tuwien.ac.at vpn.tuwien.ac.at. --servercert pin-sha256:hJzh/fqUmgdbZHWtv65otLOO6DlDj0tNjVafbwTbRmc=";
      conjn2a =
        "sudo nmcli dev wifi rescan; sudo nmcli dev wifi con Justin's Nothing (2a)";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "vi-mode" ];
    };

    initContent = ''
      source ${pkgs.pure-prompt}/share/zsh/site-functions/prompt_pure_setup
    '';
  };

  programs.autojump.enable = true;
  programs.autojump.enableZshIntegration = true;

  programs.rofi = {
      enable = true;
      plugins = [pkgs.rofi-emoji];
      configPath = "~/.config/rofi/config.rasi";
  };

  programs.htop.enable = true;

  xdg.mimeApps.defaultApplications = {
    "http" = "vivaldi-stable.desktop";
    "https" = "vivaldi-stable.desktop";
    "text/html" = "vivaldi-stable.desktop";
    "x-scheme-handler/http" = "vivaldi-stable.desktop";
    "x-scheme-handler/https" = "vivaldi-stable.desktop";
    "x-scheme-handler/about" = "vivaldi-stable.desktop";
    "x-scheme-handler/unknown" = "vivaldi-stable.desktop";
  };

  gtk.cursorTheme.package = pkgs.volantes-cursors;

  programs.git = {
    enable = true;
    userName = "schneider-inc";
    userEmail = "schneiderjus191@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = "/etc/nixos";
    };
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = let
    pathGen = folder:
      config.lib.file.mkOutOfStoreSymlink
      "/home/z3ta/justy_files/configs/dotfiles/.config/${folder}";
  in {
    ".config/nvim" = {
      source = (pathGen "nvim");
      recursive = true;
    };

    ".config/hypr" = { source = (pathGen "hypr"); };

    ".config/waybar" = { source = (pathGen "waybar"); };

    ".config/rofi" = { source = (pathGen "rofi"); };

    ".config/neofetch" = { source = (pathGen "neofetch"); };

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

  # for "nice reload"
  wayland.windowManager.hyprland.systemd.enable = false;

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.
}
