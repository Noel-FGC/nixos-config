{
  programs.nvchad = {
    extraPlugins = builtins.readFile ./plugins.lua;
    extraConfig = builtins.readFile ./config.lua;
  };
}
