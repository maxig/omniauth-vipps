# frozen_string_literal: true
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    # Main class for Vipps OAuth2 strategy.
    class Vipps < OmniAuth::Strategies::OAuth2
      DEFAULT_SCOPE = 'openid name phoneNumber address birthDate email'
      BASE_URL = 'https://api.vipps.no'
      USER_INFO_URL = '/vipps-userinfo-api/userinfo/'

      option :name, 'vipps'
      option :market, 'NO'
      option :scope, DEFAULT_SCOPE

      option :client_options,
             auth_scheme: :request_body,
             site: BASE_URL,
             authorize_url: "#{BASE_URL}/access-management-1.0/access/oauth2/auth",
             token_url: "#{BASE_URL}/access-management-1.0/access/oauth2/token"

      option :token_params, {
        grant_type: 'authorization_code'
      }

      uid { raw_info['sub'] }

      info do
        {
          address: raw_info['address'],
          birth_date: raw_info['birthdate'],
          email: raw_info['email'],
          email_verified: raw_info['email_verified'],
          family_name: raw_info['family_name'],
          given_name: raw_info['given_name'],
          name: raw_info['name'],
          other_addresses: raw_info['other_addresses'],
          phone_number: raw_info['phone_number'],
          sid: raw_info['sid'],
          sub: raw_info['sub'],
        }
      end

      def raw_info
        @raw_info ||= access_token.get(USER_INFO_URL).parsed
      end

      private

      def callback_url
        options[:redirect_uri] || (full_host + callback_path)
      end
    end
  end
end