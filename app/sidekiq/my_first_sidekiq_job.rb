class MyFirstSidekiqJob
  include Sidekiq::Job

  def perform(title)
    article = Article.create(title: title)
    if Article.last.title == title
      puts "Article successfully created"
    else
      puts "Article not created reason#{article.errors.full_messages}"
    end
  end
end
