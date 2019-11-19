set :output, 'log/crontab.log'          #cronのlogを書き出すファイル

ENV['RAILS_ENV'] ||= 'development'      #cronを実行する環境変数
set :environment, ENV['RAILS_ENV']      #cronを実行する環境変数をセット

every 1.minutes do                     #実行内容
   rake "coincheck:auto"
end