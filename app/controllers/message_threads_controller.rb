class MessageThreadsController < ApplicationController
  def index
    matching_message_threads = MessageThread.all

    @list_of_message_threads = matching_message_threads.order({ :created_at => :desc })

    render({ :template => "message_threads/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_message_threads = MessageThread.where({ :id => the_id })

    @the_message_thread = matching_message_threads.at(0)

    render({ :template => "message_threads/show.html.erb" })
  end

  def create
    the_message_thread = MessageThread.new
    the_message_thread.title = params.fetch("query_title")
    the_message_thread.user_id = params.fetch("query_user_id")
    the_message_thread.messages_count = params.fetch("query_messages_count")

    if the_message_thread.valid?
      the_message_thread.save
      redirect_to("/message_threads", { :notice => "Message thread created successfully." })
    else
      redirect_to("/message_threads", { :alert => the_message_thread.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_message_thread = MessageThread.where({ :id => the_id }).at(0)

    the_message_thread.title = params.fetch("query_title")
    the_message_thread.user_id = params.fetch("query_user_id")
    the_message_thread.messages_count = params.fetch("query_messages_count")

    if the_message_thread.valid?
      the_message_thread.save
      redirect_to("/message_threads/#{the_message_thread.id}", { :notice => "Message thread updated successfully."} )
    else
      redirect_to("/message_threads/#{the_message_thread.id}", { :alert => the_message_thread.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_message_thread = MessageThread.where({ :id => the_id }).at(0)

    the_message_thread.destroy

    redirect_to("/message_threads", { :notice => "Message thread deleted successfully."} )
  end
end
