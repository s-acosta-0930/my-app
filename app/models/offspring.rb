# == Schema Information
#
# Table name: offsprings
#
#  id            :integer          not null, primary key
#  dob           :date
#  gender        :string
#  height_cm     :integer
#  name          :string
#  weight_lbs    :integer
#  weight_oz     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  eye_color_id  :integer
#  hair_color_id :integer
#  parent_id     :integer
#
class Offspring < ApplicationRecord

  belongs_to(:parent, { :required => true, :class_name => "User", :foreign_key => "parent_id", :counter_cache => true })

  belongs_to(:hair_color, { :class_name => "Color", :foreign_key => "hair_color_id" })

end
