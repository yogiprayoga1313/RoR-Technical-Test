class ProductMailerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later

    ProductMailer.new_product_notification(user, product).deliver_now
  end
end
