require "breakfast/version"

require "breakfast/brunch_watcher"
require "breakfast/manifest"
require "breakfast/view_helper"

module Breakfast
  BUILD_COMMAND = "./node_modules/brunch/bin/brunch build".freeze
  PRODUCTION_BUILD_COMMAND = "./node_modules/brunch/bin/brunch build --production".freeze
end

require "breakfast/railtie" if defined?(Rails)
