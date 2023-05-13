# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer
#  user_id    :integer
#
class Review < ApplicationRecord

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })

  belongs_to(:product, { :required => true, :class_name => "Product", :foreign_key => "product_id", :counter_cache => true })

end
