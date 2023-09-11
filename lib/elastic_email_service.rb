require 'httparty'

class LayananElasticEmail
  include HTTParty
  base_uri 'https://api.elasticemail.com/v2'

  def initialize(api_key)
    @options = { query: { apikey: api_key } }
  end

  def kirim_email(params)
    self.class.post('/email/send', @options.merge(body: params.to_json, headers: { 'Content-Type' => 'application/json' }))
  end
end
