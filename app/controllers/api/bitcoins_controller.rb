class Api::BitcoinsController < ApplicationController
    def index
        bitcoin = Bitcoin.all
        @data = bitcoin.last(1) # 配列で渡ってる
    end
end