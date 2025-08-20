{ config, pkgs, inputs, ... }: {
  imports = [ ./packages.nix ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "z3ta";
  home.homeDirectory = "/home/z3ta";

  nixpkgs.config.allowUnfree = true;

  # The home.packages option allows you to install Nix packages into your
  # environment.
  services.kdeconnect.enable = true;

  programs.neovim = { enable = true; };

  programs.autojump.enable = true;
  programs.autojump.enableZshIntegration = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      update = "sudo nixos-rebuild switch";
      poop = "ls";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "vi-mode" ];
    };

    initContent = ''
      source ${pkgs.pure-prompt}/share/zsh/site-functions/prompt_pure_setup
    '';
  };

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

    ".config/hypr" = { 
        source = (pathGen "hypr"); 
        recursive = true;
    };

    ".config/waybar" = { 
        source = (pathGen "waybar"); 
        recursive = true;
    };

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
  systemd.user.startServices = "sd-switch";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.
}
