class Api::BitcoinsController < ApplicationController
    def index
        bitcoin = Bitcoin.all
        @data = bitcoin.last(1) # 配列で渡してる
    end

    def show
        bitcoin = Bitcoin.all
        @data = bitcoin.last(4)
    end
end