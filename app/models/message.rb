# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  content    :string
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  thread_id  :integer
#  user_id    :integer
#
class Message < ApplicationRecord

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })

  belongs_to(:thread, { :required => true, :class_name => "MessageThread", :foreign_key => "thread_id", :counter_cache => true })

end
