{
  autoGroups = {
    highlight_yank = {};
    vim_enter = {};
    indentscope = {};
    restore_cursor = {};
    go_tabs = {};
    which_key = {};
  };

  autoCmd = [
    {
      group = "highlight_yank";
      event = ["TextYankPost"];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            vim.highlight.on_yank()
          end
        '';
      };
    }
    ## from NVChad https://nvchad.com/docs/recipes (this autocmd will restore the cursor position when opening a file)
    {
      group = "restore_cursor";
      event = ["BufReadPost"];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            if
              vim.fn.line "'\"" > 1
              and vim.fn.line "'\"" <= vim.fn.line "$"
              and vim.bo.filetype ~= "commit"
              and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
            then
              vim.cmd "normal! g`\""
            end
          end
        '';
      };
    }
    {
      group = "go_tabs";
      event = ["FileType"];
      pattern = "go";
      command = "setlocal shiftwidth=4 tabstop=4";
    }
  ];
}
