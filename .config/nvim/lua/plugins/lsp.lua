return {
	-- default lsp client configs for various lsp servers
	{
		"neovim/nvim-lspconfig",
		opts = {
			document_highlight = { enabled = false }
		},
		config = function() end
	},
	-- manage external editor tooling manager (lsps, dap, linters, formatters)
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = { border = "single" }
			})
		end
	},
	-- bridge between mason and lspconfig
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
			local mason_lspconfig = require("mason-lspconfig")

            mason_lspconfig.setup({
				automatic_installation = true
            })

			mason_lspconfig.setup_handlers({
				function(server)
					require("lspconfig")[server].setup({})
				end,
				["rust_analyzer"] = function ()
					require("rust-tools").setup({})
				end
			})
        end
    },
	{ "ray-x/lsp_signature.nvim" }, -- needs configuring
}
