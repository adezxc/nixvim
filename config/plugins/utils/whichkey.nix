{
  ## Configured in auto_cmds.nix
  plugins.which-key = {
    enable = true;
    settings = {
      icons = {
        mappings = true;
      };

      spec = [
        {
          __unkeyed-1 = "<leader>c";
          group = "[C]ode";
          mode = ["n" "x"];
        }
        {
          __unkeyed-1 = "<leader>d";
          group = "[D]ocument";
        }
        {
          __unkeyed-1 = "<leader>r";
          group = "[R]ename";
        }
        {
          __unkeyed-1 = "<leader>s";
          group = "[S]earch";
        }
        {
          __unkeyed-1 = "<leader>w";
          group = "[W]orkspace";
        }
        {
          __unkeyed-1 = "<leader>t";
          group = "[T]oggle";
        }
        {
          __unkeyed-1 = "<leader>h";
          group = "Git [H]unk";
          mode = ["n" "v"];
        }
      ];
    };
  };
}
