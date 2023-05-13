# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  email                 :string
#  message_threads_count :integer
#  offsprings_count      :integer
#  password_digest       :string
#  reviews_count         :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:reviews, { :class_name => "Review", :foreign_key => "user_id", :dependent => :nullify })

  has_many(:offsprings, { :class_name => "Offspring", :foreign_key => "parent_id", :dependent => :destroy })

  has_many(:messages, { :class_name => "Message", :foreign_key => "user_id", :dependent => :destroy })

  has_many(:message_threads, { :class_name => "MessageThread", :foreign_key => "user_id", :dependent => :destroy })

end
