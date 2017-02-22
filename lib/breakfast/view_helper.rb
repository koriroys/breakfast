module Breakfast
  module ViewHelper
    include ActionView::Helpers::AssetUrlHelper
    include ActionView::Helpers::AssetTagHelper

    def compute_asset_path(path, options = {})
      if Rails.configuration.breakfast.digest && Rails.configuration.breakfast.manifest.asset(path)
        path = Rails.configuration.breakfast.manifest.asset(path)
      end

      super(path, options)
    end
  end
end
