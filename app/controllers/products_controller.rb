class ProductsController < ApplicationController
  def index
    matching_products = Product.all

    @list_of_products = matching_products.order({ :created_at => :desc })

    render({ :template => "products/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_products = Product.where({ :id => the_id })

    @the_product = matching_products.at(0)

    render({ :template => "products/show.html.erb" })
  end

  def create
    the_product = Product.new
    the_product.upc_id = params.fetch("query_upc_id")
    the_product.item_description = params.fetch("query_item_description")
    the_product.image_url = params.fetch("query_image_url")
    the_product.item_name = params.fetch("query_item_name")
    the_product.price = params.fetch("query_price")
    the_product.brand = params.fetch("query_brand")
    the_product.color = params.fetch("query_color")
    the_product.size = params.fetch("query_size")
    the_product.dimensions = params.fetch("query_dimensions")
    the_product.reviews_count = params.fetch("query_reviews_count")

    if the_product.valid?
      the_product.save
      redirect_to("/products", { :notice => "Product created successfully." })
    else
      redirect_to("/products", { :alert => the_product.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_product = Product.where({ :id => the_id }).at(0)

    the_product.upc_id = params.fetch("query_upc_id")
    the_product.item_description = params.fetch("query_item_description")
    the_product.image_url = params.fetch("query_image_url")
    the_product.item_name = params.fetch("query_item_name")
    the_product.price = params.fetch("query_price")
    the_product.brand = params.fetch("query_brand")
    the_product.color = params.fetch("query_color")
    the_product.size = params.fetch("query_size")
    the_product.dimensions = params.fetch("query_dimensions")
    the_product.reviews_count = params.fetch("query_reviews_count")

    if the_product.valid?
      the_product.save
      redirect_to("/products/#{the_product.id}", { :notice => "Product updated successfully."} )
    else
      redirect_to("/products/#{the_product.id}", { :alert => the_product.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_product = Product.where({ :id => the_id }).at(0)

    the_product.destroy

    redirect_to("/products", { :notice => "Product deleted successfully."} )
  end
end
