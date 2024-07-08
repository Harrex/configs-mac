local quarto = require("quarto")
quarto.setup({
    lspFeatures = {
        -- NOTE: put whatever languages you want here:
        languages = { "r", "python", "rust" },
        chunks = "all",
        diagnostics = {
            enabled = true,
            triggers = { "BufWritePost" },
        },
        completion = {
            enabled = true,
        },
    },
    keymap = {
        -- NOTE: setup your own keymaps:
        hover = "K",
        definition = "gd",
        rename = "<F2>",
        references = "gr",
        format = "<F3>",
    },
    codeRunner = {
        enabled = true,
        default_method = "molten",
    },
})
