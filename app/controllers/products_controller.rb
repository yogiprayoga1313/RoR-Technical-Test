class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    # @latest_products = Product.order(created_at: :desc).limit(10)
    @products = Product.all
    render json: @products
  end
  
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    
    if @product.save
      users = User.pluck(:email) 
      product_name = @product.judul

      users.each do |user_email|
        ProductMailer.new_product_notification(user_email, product_name).deliver_later
      end

      if response.code == 200
      else
        puts response.body
      end

      write_products_to_json
      redirect_to root_path, notice: 'Produk berhasil dibuat.'
    else
      render :new
    end
  end

  private

  def write_products_to_json
    products = Product.all
    File.open("public/products.json", "w") do |f|
      f.write(products.to_json)
    end
  end

  def product_params
    params.require(:product).permit(:judul, :tahun_terbit, :user_id)
  end
end

