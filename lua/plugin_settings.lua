local opts = {
    -- automatically set inlay hints (type hints)
    -- There is an issue due to which the hints are not applied on the first
    -- opened file. For now, write to the file to trigger a reapplication of
    -- the hints or just run :RustSetInlayHints.
    -- default: true
    autoSetHints = true,
}
require('rust-tools').setup(opts)
require('rust-tools.inlay_hints').set_inlay_hints() -- RustSetInlayHints
require('rust-tools.runnables').runnables() -- RustRunnables
require'rust-tools.hover_actions'.hover_actions() -- RustHoverActions
require'rust-tools.expand_macro'.expand_macro() -- RustExpandMacro
require'rust-tools.open_cargo_toml'.open_cargo_toml() -- RustOpenCargo
require'rust-tools.parent_module'.parent_module() -- RustParentModule
require'rust-tools.join_lines'.join_lines() -- RustJoinLines

-- RustRunnablesTelescope
require('rust-tools.runnables').runnables_telescope(require('telescope.themes').get_dropdown({}))
