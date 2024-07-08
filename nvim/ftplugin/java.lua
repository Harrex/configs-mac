local jdtls = require('jdtls')
local jdtls_dap = require("jdtls.dap")

local config = {
    cmd = { '/Users/harrek/.local/share/nvim/mason/bin/jdtls' },
    root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),

    init_options = {
        bundles = {
            vim.fn.glob(
                "/Users/harrek/.java/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar",
                0)
        },
    },
}

jdtls_dap.setup_dap()
jdtls_dap.setup_dap_main_class_configs()
jdtls.start_or_attach(config)
