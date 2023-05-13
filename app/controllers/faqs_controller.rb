class FaqsController < ApplicationController
  def index
    matching_faqs = Faq.all

    @list_of_faqs = matching_faqs.order({ :created_at => :desc })

    render({ :template => "faqs/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_faqs = Faq.where({ :id => the_id })

    @the_faq = matching_faqs.at(0)

    render({ :template => "faqs/show.html.erb" })
  end

  def create
    the_faq = Faq.new
    the_faq.product_id = params.fetch("query_product_id")
    the_faq.question_description = params.fetch("query_question_description")
    the_faq.answer_description = params.fetch("query_answer_description")

    if the_faq.valid?
      the_faq.save
      redirect_to("/faqs", { :notice => "Faq created successfully." })
    else
      redirect_to("/faqs", { :alert => the_faq.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_faq = Faq.where({ :id => the_id }).at(0)

    the_faq.product_id = params.fetch("query_product_id")
    the_faq.question_description = params.fetch("query_question_description")
    the_faq.answer_description = params.fetch("query_answer_description")

    if the_faq.valid?
      the_faq.save
      redirect_to("/faqs/#{the_faq.id}", { :notice => "Faq updated successfully."} )
    else
      redirect_to("/faqs/#{the_faq.id}", { :alert => the_faq.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_faq = Faq.where({ :id => the_id }).at(0)

    the_faq.destroy

    redirect_to("/faqs", { :notice => "Faq deleted successfully."} )
  end
end
