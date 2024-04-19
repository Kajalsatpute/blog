module CountProcess
  class MyFirstWorker
    include Sidekiq::Worker

    def perform
      article_count = Article.count
      puts article_count
    end
  end
end
