# frozen_string_literal: true

module OmniAuth
  module Strategies
    # Main class for Vipps OAuth2 strategy.
    class VippsTest < Vipps
      BASE_URL = 'https://apitest.vipps.no'
    end
  end
end