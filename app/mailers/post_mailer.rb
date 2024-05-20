class PostMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.post_created.subject
  #
  def post_created(user)
    @user = user

    mail(to: @user.email, subject: 'Checkout our new article about zero hunger', form: 'postmailer@example.com')
  end
end
