{
  environment.sessionVariables = rec {
    TERMINAL = "alacritty";
    EDITOR = "nvim";
    XDG_BIN_HOME = "$HOME/.local/bin";
    PATH = [
      "${XDG_BIN_HOME}"
    ];
  };

  environment.systemPackages = with pkgs; [
    gcc
    kdenlive
    # jetbrains.pycharm-professional
    # jre8
    # qemu
    # quickemu
  ];
}
