# == Schema Information
#
# Table name: message_threads
#
#  id             :integer          not null, primary key
#  messages_count :integer
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#
class MessageThread < ApplicationRecord

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })

  has_many(:messages, { :class_name => "Message", :foreign_key => "thread_id", :dependent => :destroy })

end
