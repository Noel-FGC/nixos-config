{
  programs.nvchad = {
    extraPlugins = 
    ''
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
			-- Configuration here, or leave empty to use defaults
	    -- font = "CaskaydiaCoveNerdFont=48",
	    font = "D2CodingLigatureNerdFontMono-Regular=48",
	    -- font = "Comfortaa-regular=24",
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
	    "ArcaneSpecs/HexEditor.nvim",
	    -- config = true,
	    opts = {},
	    config = function()
	    local hex = require("hex")
	    hex.setup()
	    require('hex').dump()
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
      '';
  };
}
