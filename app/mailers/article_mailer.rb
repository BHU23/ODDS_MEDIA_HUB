class ArticleMailer < ApplicationMailer
    default from: 'notifications@oddsmediahub.com'
   
    def new_article_email(article)
        @article = article
        mail(to: "admin@oddsmediahub.com", subject: "New Article Created: #{@article.title}")
    end
end
