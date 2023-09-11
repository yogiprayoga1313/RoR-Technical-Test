namespace :email do
    desc "Send new product notifications"
    task send_new_product_notifications: :environment do
      users = User.pluck(:email) # Ganti dengan model dan kolom yang sesuai
  
      users.each do |user_email|
        ProductMailer.new_product_notification(user_email).deliver_now
      end
    end
  end
  