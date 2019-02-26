module Spotlight
  # ...
  module SearchHelper
    def search_service
      Blacklight::SearchService.new(config: blacklight_config, user_params: (respond_to?(:search_state) ? search_state.to_h : {}), controller: self)
    end
  end
end
