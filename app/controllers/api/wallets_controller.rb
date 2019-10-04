class Api::WalletsController < ApplicationController
    def index
        @wallet_data = Wallet.find(current_user.id)
    end

    def show
        bitcoin_data = Bitcoin.all
        bit_data = bitcoin_data.last(1)
        @before_sell_data = Wallet.find(current_user.id)
        @before_sell_data.bitcoin -= 1
        @before_sell_data.yen += bit_data[0].price
        @before_sell_data.save
    end

    def new
        bitcoin_buy_data = Bitcoin.all
        bit_buy_data = bitcoin_buy_data.last(1)
        @before_buy_data = Wallet.find(current_user.id)
        @before_buy_data.bitcoin += 1
        @before_buy_data.yen -= bit_buy_data[0].price
        @before_buy_data.save          
    end
end

