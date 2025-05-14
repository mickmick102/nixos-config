{
  # Configure console keymap
  console.keyMap = "cf";

  services.xserver = {
    xkb.layout = "cf";
    xkbVariant = "qwerty";
    #xkbOptions = "grp:win_space_toggle";
  };
}