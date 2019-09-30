# https://coincheck.com/api/ticker　にrequest投げる
# 欲しいものはlastとtimestampのみ
require 'httpclient'
require 'json'

module Coincheck::Get_price extend self
    def batch
        # tickerのAPIリクエスト先
        url = 'https://coincheck.com/api/ticker'

        client = HTTPClient.new

        request = client.get(url)
        
        response = JSON.parse(request.body) 

        data = Bitcoin.new
        data.price = response["last"]
        data.date_time = response["timestamp"]
        data.save
        puts "complete!"
    end
end