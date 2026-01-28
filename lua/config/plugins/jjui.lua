require('jjui').setup({
  -- Window appearance
  floating_window_winblend = 0, -- transparency (0=solid, 100=invisible)
  floating_window_scaling_factor = 0.85, -- floating window size (0.85 = 85% of screen)
  floating_window_border = 'rounded', -- border style: 'rounded', 'single', 'double', 'solid', etc.

  -- Integration settings
  use_neovim_remote = 1, -- use neovim-remote if available

  -- Custom config
  use_custom_config_file_path = 0, -- use custom config file
  config_file_path = '', -- path to custom config file (or table of paths)

  -- Callbacks
  on_exit_callback = nil, -- function to call when jjui exits
})
