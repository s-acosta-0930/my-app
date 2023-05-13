# == Schema Information
#
# Table name: faqs
#
#  id                   :integer          not null, primary key
#  answer_description   :string
#  question_description :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  product_id           :integer
#
class Faq < ApplicationRecord

  belongs_to(:product, { :required => true, :class_name => "Product", :foreign_key => "product_id" })

end
