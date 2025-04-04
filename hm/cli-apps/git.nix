{
  config,
  pkgs,
  ...
}:

{
  # Git config
  programs.git = {
    enable = true;
    userName = "atomiksan";
    userEmail = "25588579+atomiksan@users.noreply.github.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
