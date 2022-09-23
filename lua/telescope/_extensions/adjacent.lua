return require("telescope").register_extension {
  setup = function(ext_config, config)
	print("SETUP")
    -- access extension config and user config
  end,
  exports = {
    adjacent = require("adjacent").find
  },
}
