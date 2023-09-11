class ProductMailer < ApplicationMailer
  def new_product_notification(user_email, product_name)
    @product_name = product_name
    mail(to: user_email, subject: 'Ada produk baru di aplikasi kami!')
  end

  def log_email_delivery
    # Tambahkan log pengiriman email ke dalam basis data atau log aplikasi
    # Anda dapat mencatat informasi seperti alamat email penerima dan waktu pengiriman.
    # Misalnya:
    EmailDeliveryLog.create(email: mail.to.first, sent_at: Time.now)
  end
end
