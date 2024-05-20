module PostNotifier
  extend ActiveSupport::Concern

  included do
    after_action :notify_users, only: [:create]
  end

  private

  def notify_users
    return unless @post.persisted?

    User.where.not(id: @post.user_id).each do |user|
      PostMailer.post_created(user).deliver_later
    end
  end
end
