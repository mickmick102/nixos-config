{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    imv # Image Viewer
    mpv # Media Player
    obs-studio
    pavucontrol # Sound Control
    legcord # Discord

    # CLI utils
    brightnessctl # Control brightness
    cliphist # Clipboard history
    ffmpeg # Video Encoding
    ffmpegthumbnailer
    fzf # Fuzzy finder
    git-graph
    grimblast # Screenshot
    htop
    hyprpicker # Color piquer
    jq # JSon filter util
    ntfs3g # NTFS Driver
    mediainfo # Infos on Medias
    microfetch # System information
    playerctl # Player controler
    silicon
    udisks # Disk management
    ueberzugpp # Draw image inside sub screen
    unzip
    wget
    wl-clipboard # Clipboard utility
    yt-dlp # Audio and Video downloader
    yq
    zip

    # Coding stuff
    openjdk23
    nodejs
    python311

    # WM stuff
    libsForQt5.xwaylandvideobridge # Wayland to X11 Video Streaming
    libnotify # Send Desktop notification
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    bemoji # Emoji Picker
    nix-prefetch-scripts # Nix Prefetch
  ];
}
