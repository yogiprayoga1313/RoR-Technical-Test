class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.new_post_email.subject
  #
  def new_post_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
