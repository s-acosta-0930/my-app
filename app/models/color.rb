# == Schema Information
#
# Table name: colors
#
#  id         :integer          not null, primary key
#  color_name :string
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Color < ApplicationRecord

  has_many(:offsprings, { :class_name => "Offspring", :foreign_key => "hair_color_id", :dependent => :nullify })

end
