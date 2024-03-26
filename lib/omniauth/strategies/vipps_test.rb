# frozen_string_literal: true

module OmniAuth
  module Strategies
    # Main class for Vipps OAuth2 strategy.
    class VippsTest < OmniAuth::Strategies::Vipps
      BASE_URL = 'https://apitest.vipps.no'

      option :name, 'vipps_test'
    end
  end
end