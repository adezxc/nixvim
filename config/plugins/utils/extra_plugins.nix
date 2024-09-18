{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    sleuth
  ];
}
