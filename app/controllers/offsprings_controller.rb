class OffspringsController < ApplicationController
  def index
    matching_offsprings = Offspring.all

    @list_of_offsprings = matching_offsprings.order({ :created_at => :desc })

    render({ :template => "offsprings/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_offsprings = Offspring.where({ :id => the_id })

    @the_offspring = matching_offsprings.at(0)

    render({ :template => "offsprings/show.html.erb" })
  end

  def create
    the_offspring = Offspring.new
    the_offspring.parent_id = params.fetch("query_parent_id")
    the_offspring.name = params.fetch("query_name")
    the_offspring.dob = params.fetch("query_dob")
    the_offspring.height_cm = params.fetch("query_height_cm")
    the_offspring.weight_lbs = params.fetch("query_weight_lbs")
    the_offspring.weight_oz = params.fetch("query_weight_oz")
    the_offspring.gender = params.fetch("query_gender")
    the_offspring.hair_color_id = params.fetch("query_hair_color_id")
    the_offspring.eye_color_id = params.fetch("query_eye_color_id")

    if the_offspring.valid?
      the_offspring.save
      redirect_to("/offsprings", { :notice => "Offspring created successfully." })
    else
      redirect_to("/offsprings", { :alert => the_offspring.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_offspring = Offspring.where({ :id => the_id }).at(0)

    the_offspring.parent_id = params.fetch("query_parent_id")
    the_offspring.name = params.fetch("query_name")
    the_offspring.dob = params.fetch("query_dob")
    the_offspring.height_cm = params.fetch("query_height_cm")
    the_offspring.weight_lbs = params.fetch("query_weight_lbs")
    the_offspring.weight_oz = params.fetch("query_weight_oz")
    the_offspring.gender = params.fetch("query_gender")
    the_offspring.hair_color_id = params.fetch("query_hair_color_id")
    the_offspring.eye_color_id = params.fetch("query_eye_color_id")

    if the_offspring.valid?
      the_offspring.save
      redirect_to("/offsprings/#{the_offspring.id}", { :notice => "Offspring updated successfully."} )
    else
      redirect_to("/offsprings/#{the_offspring.id}", { :alert => the_offspring.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_offspring = Offspring.where({ :id => the_id }).at(0)

    the_offspring.destroy

    redirect_to("/offsprings", { :notice => "Offspring deleted successfully."} )
  end
end
