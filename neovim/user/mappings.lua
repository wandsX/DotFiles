return {
  -- first key is the mode
  n = {
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["H"] = { "^" },
    ["L"] = { "$" },

    -- lsp
    ["<leader>fm"] = { "<cmd>lua vim.lsp.buf.format()<CR>" },

    -- windows manage
    ["sv"] = { "<cmd>vsp<cr>" },
    ["sh"] = { "<cmd>sp<cr>" },
    ["sc"] = { "<c-w>c" },
    ["so"] = { "<c-w>o" },

    -- buffer
    ["<A-c>"] = { function() require("astronvim.utils.buffer").close() end },

    -- neotree
    ["<leader>e"] = false,
    ["<A-m>"] = { "<cmd> Neotree toggle <CR>", desc = "Toggle File Explorer" },

    -- LSP
    ["[e"] = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "Previous diagnostic" },
    ["]e"] = { "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "Next diagnostic" },
    ["gp"] = { "<cmd>Lspsaga peek_definition<CR>", desc = "Peek Definition" },
    ["gt"] = { "<cmd>Lspsaga peek_type_definition<CR>", desc = "Peek Type Definition" },

    -- CMake
    ["<leader>c"] = { desc = "CMake" },
    ["<leader>cb"] = { "<cmd>CMakeBuild<CR>", desc = "Build" },
    ["<leader>cc"] = { "<cmd>CMakeClean<CR>", desc = "Clean target" },
    ["<leader>cd"] = { "<cmd>CMakeDebug<CR>", desc = "Debug" },
    ["<leader>cg"] = { "<cmd>CMakeGenerate<CR>", desc = "Generate" },
    ["<leader>ci"] = { "<cmd>CMakeInstall<CR>", desc = "Install targets" },
    ["<leader>ck"] = { "<cmd>CMakeStop<CR>", desc = "Stop cmake process" },
    ["<leader>cl"] = { "<cmd>CMakeSelectLaunchTarget<CR>", desc = "Select launch target" },
    ["<leader>co"] = { "<cmd>CMakeOpen<CR>", desc = "Open console" },
    ["<leader>cr"] = { "<cmd>CMakeRun<CR>", desc = "Run" },
    ["<leader>cs"] = { "<cmd>CMakeSelectBuildType<CR>", desc = "Select build type" },
    ["<leader>ct"] = { "<cmd>CMakeSelectBuildTarget<CR>", desc = "Select build target" },
    ["<leader>cz"] = { "<cmd>CMakeClose<CR>", desc = "Close console" },

    -- Code Runner
    ["<leader>r"] = { desc = "Runner" },
    ["<leader>rc"] = { "<cmd>RunCode<cr>", desc = "Run Code" },
    ["<leader>rf"] = { "<cmd>RunFile<cr>", desc = "Run File" },
    ["<leader>rp"] = { "<cmd>RunProject<cr>", desc = "Run Project" },
    ["<leader>rd"] = { "<cmd>RunClose<cr>", desc = "Run Close" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },

  v = {
    ["H"] = { "^" },
    ["L"] = { "$" },
  },

  t = {},
}