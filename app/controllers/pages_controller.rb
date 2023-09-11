class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:home]
  def home
    # @books = Product.all # Ganti Product dengan model yang sesuai
    @books = Product.page(params[:page]).per(10) # Ubah angka 10 sesuai dengan jumlah item per halaman yang Anda inginkan
  end

  def detail
  end
end
