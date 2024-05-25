class PostMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.post_created.subject
  #
  include Rails.application.routes.url_helpers

  def post_created(user, post)
    @post = post
    @user = user
    @post_image_url = url_for(@post.image) if @post.image.attached?

    mail(to: @user.email, subject: 'Checkout our new article about zero hunger', form: 'khantestmail01@gmail.com')
  end
end
