return {
  {
	  "nvim-neotest/nvim-nio"
	},

	{
	  "rcarriga/nvim-dap-ui",
	  event = "VeryLazy",
	  dependencies = "nfussenegger/nvim-dap",
    
    config = function()
      local dap = require("dap")
	      local dapui = require("dapui")
	      dapui.setup()

  	  dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
	    end

  	  dap.listeners.before.event_initialized["dapui_config"] = function()
	  	  dapui.close()
	    end

  	  dap.listeners.before.event_exited["dapui_config"] = function()
	  	  dapui.close()
	    end

	  end
	},
  -- {
  --   "LunarVim/bigfile.nvim"
  --   opts = {
  --     features = {
  --       "lsp",
  --       "treesitter",
  --       "syntax",
  --       "vimopts"
  --     }
  --   }
  -- },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
        { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },
  {
    "denialofsandwich/sudo.nvim",
    lazy = true,
    cmd = { "SudoWrite", "SudoRead" },
    dependencies = {
      "MunifTanjim/nui.nvim"
    },
    config = true,
  },

  {
    'hedyhli/outline.nvim',
    config = function()
      require('outline').setup({
        providers = {
          priority = { 'lsp', 'coc', 'markdown', 'norg', 'treesitter' },
        },
        symbols = {
          icons = {
            Variable = { Icon = "", hl = "Constant" },
            Function = { icon = '󰆧', hl = 'Function' }, -- temporary fix for bbtools icons being wrong and annoying me because idk how treesitter works and i decided having my own fork of the treesitter provider isnt worth it
          },
        },
      })
    end,
    event = "VeryLazy",
    dependencies = {
      'epheien/outline-treesitter-provider.nvim'
    }
  },

  {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    opts = {},
    cmd = { "Typr", "TyprStats" },
  },
	{
		"michaelrommel/nvim-silicon",
		lazy = true,
		cmd = "Silicon",
		main = "nvim-silicon",
		opts = {
	    font = "JetBrainsMonoNF-Regular=48",
	    pad_horiz = 80,
	    pad_vert = 80,
	    theme = "Coldark-Dark",
	    shadow_offset_x = 4,
	    shadow_offset_y = 4,
	    shadow_blur_radius = 6,
	    -- background_image = "/usr/share/wallpapers/MilkyWay/contents/images/1080x1920.png",
	    to_clipboard = true,
	    no_window_controls = true,
	    window_title = function()
		return vim.fn.fnamemodify(
		    vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()),
		    ":t"
		)
	    end,
			line_offset = function(args)
				return args.line1
			end,
		}
	},

  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap"
    },
    opts = {
      handlers = {},
      ensure_installed = {
        "codelldb",
      }
    },
  },
  {
    "mfussenegger/nvim-dap",
  },

  -- {
  --   "jose-elias-alvarez/null-ls.nvim",
  --   event = "VeryLazy",
  --   opts = function()
  --     return require "configs.null-ls"
  --   end,
  -- },
  {
    "RaafatTurki/hex.nvim",
    lazy = true,
    opts = {},
    cmd = { "HexToggle", "HexDump", "HexAssemble" },
    config = function()
    local hex = require("hex")
    hex.setup()
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "codelldb",
      },
    },
  },
}

