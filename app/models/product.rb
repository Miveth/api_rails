# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  description :string(255)
#  img_url     :string(255)
#  name        :string(255)
#  price       :decimal(10, 2)
#  stock       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Product < ApplicationRecord
    # callbacks
    before_save :notify_product_saving
    after_save  :notify_product_saved

    def notify_product_saving
        puts " - Producto #{self.name} guardado - "
      end
  
    def notify_product_saved
        puts " - Producto #{self.name} persistido y almacenado - "
    end


    validates :name, presence: { message: 'El campo nombre no ha sido correctamente introducido' }
    validates :description, presence: { message: 'El campo descripción no ha sido correctamente introducido' }
    validates :price, numericality: { greater_than_or_equal_to: 1, message: 'El precio %{value} debe ser mayor o igual a 0' }
  
end
