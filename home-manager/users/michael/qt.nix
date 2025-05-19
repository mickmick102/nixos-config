{ pkgs, ... }: {
  home.packages = with pkgs; [
    #papirus-icon-theme
    #pcmanfm-qt
  ];
  qt = {
    enable = true;
  };
}
