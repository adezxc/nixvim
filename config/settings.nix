{pkgs, ...}: {
  config = {
    extraConfigLuaPre =
      # lua
      ''
        vim.fn.sign_define("diagnosticsignerror", { text = " ", texthl = "diagnosticerror", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignwarn", { text = " ", texthl = "diagnosticwarn", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignhint", { text = "󰌵", texthl = "diagnostichint", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsigninfo", { text = " ", texthl = "diagnosticinfo", linehl = "", numhl = "" })
      '';

    clipboard = {
      providers.xclip.enable = true;
    };

    opts = {
      number = true;

      mouse = "a";

      showmode = false;

      clipboard = "unnamedplus";

      breakindent = true;

      undofile = true;

      cursorline = true;

      splitright = true;

      splitbelow = true;

      updatetime = 250;

      timeoutlen = 300;

      signcolumn = "yes";

      list = true;

      listchars = {
        tab = "» ";
        trail = "·";
        nbsp = "␣";
      };

      inccommand = "split";

      scrolloff = 10;

      hlsearch = true;
    };

    colorschemes.catppuccin.enable = true;
  };
}
