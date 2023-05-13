# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  brand            :string
#  color            :string
#  dimensions       :string
#  image_url        :string
#  item_description :string
#  item_name        :string
#  price            :float
#  reviews_count    :integer
#  size             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  upc_id           :integer
#
class Product < ApplicationRecord

  has_many(:reviews, { :class_name => "Review", :foreign_key => "product_id", :dependent => :destroy })

  has_many(:faqs, { :class_name => "Faq", :foreign_key => "product_id", :dependent => :destroy })

end
