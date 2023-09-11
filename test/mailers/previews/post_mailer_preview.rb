# Preview all Emails at http://localhost:3000/rails/mailers/post_mailer
class PostMailerPreview < ActionMailer::Preview

    # Preview this Email at http://localhost:3000/rails/mailers/post_mailer/new_post_email
    def new_post_email
        PostMailer.new_post_email
    end
    
end