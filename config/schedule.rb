# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

# ここから記述

set :output, 'log/crontab.log'          #cronのlogを書き出すファイル

ENV['RAILS_ENV'] ||= 'development'      #cronを実行する環境変数
set :environment, ENV['RAILS_ENV']      #cronを実行する環境変数をセット

every 1.minutes do                     #実行内容
   rake "coincheck:auto"
end