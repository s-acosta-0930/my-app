class ColorsController < ApplicationController
  def index
    matching_colors = Color.all

    @list_of_colors = matching_colors.order({ :created_at => :desc })

    render({ :template => "colors/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_colors = Color.where({ :id => the_id })

    @the_color = matching_colors.at(0)

    render({ :template => "colors/show.html.erb" })
  end

  def create
    the_color = Color.new
    the_color.color_name = params.fetch("query_color_name")
    the_color.image_url = params.fetch("query_image_url")

    if the_color.valid?
      the_color.save
      redirect_to("/colors", { :notice => "Color created successfully." })
    else
      redirect_to("/colors", { :alert => the_color.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_color = Color.where({ :id => the_id }).at(0)

    the_color.color_name = params.fetch("query_color_name")
    the_color.image_url = params.fetch("query_image_url")

    if the_color.valid?
      the_color.save
      redirect_to("/colors/#{the_color.id}", { :notice => "Color updated successfully."} )
    else
      redirect_to("/colors/#{the_color.id}", { :alert => the_color.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_color = Color.where({ :id => the_id }).at(0)

    the_color.destroy

    redirect_to("/colors", { :notice => "Color deleted successfully."} )
  end
end
