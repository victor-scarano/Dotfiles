return {
	{ "ray-x/lsp_signature.nvim" }, -- needs configuring
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "rust_analyzer",
                    "taplo",
                    "clangd",
					"zls"
                }
            })
        end
    },
	{
		"neovim/nvim-lspconfig",
		opts = {
			document_highlight = {
				enabled = false
			}
		},
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({ handlers = handlers })
			lspconfig.taplo.setup({ handlers = handlers })
			lspconfig.clangd.setup({ handlers = handlers })
			lspconfig.rust_analyzer.setup({ handlers = handlers })
			lspconfig.zls.setup({ handlers = handlers })

			vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, {})
		end
	}
}
