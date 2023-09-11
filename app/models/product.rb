class Product < ApplicationRecord
    belongs_to :user

    validates :judul, presence: { message: "harus diisi" }
    validates :tahun_terbit, presence: { message: "terbit harus diisi" }
    validates :user_id, presence: { message: "harus diisi" }

    include Kaminari::ConfigurationMethods # Tambahkan baris ini
  end
