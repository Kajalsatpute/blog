set :output, "log/cron_output.log"

every 5.minutes do
  runner "Article.article_count"
end
