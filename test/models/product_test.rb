require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def setup
    @product = Product.new(judul: 'Contoh Judul', tahun_terbit: 2022, user_id: 1)
  end

  test 'validasi harus valid' do
    assert @product.valid?
  end

  test 'judul harus ada' do
    @product.judul = nil
    assert_not @product.valid?
  end

  test 'tahun_terbit harus ada' do
    @product.tahun_terbit = nil
    assert_not @product.valid?
  end

  test 'user_id harus ada' do
    @product.user_id = nil
    assert_not @product.valid?
  end
end
