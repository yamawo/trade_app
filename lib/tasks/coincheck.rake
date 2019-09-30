namespace :coincheck do
    desc "get price and timestamp"
    task auto: :environment do
        Coincheck::Get_price.batch
    end
end
