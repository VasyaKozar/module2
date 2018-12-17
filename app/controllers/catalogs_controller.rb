class CatalogsController < ApplicationController
  befora_action :authenticate_user!
  def new
  	@catalog = Catalog.new
  end

  def create
  	@catalog = current_user.catalog.build(product_params)
  	if(@catalog.save)
  		redirect_to @catalog
  	else
  		render 'new'
  	end
  end
  
  def show
  	@catalog = Catalog.find_by(id: params [:id])
  end

  def edit
  	@catalog = Catalog.find_by(id: params [:id])
  end

  def update
  	@catalog = Catalog.find_by(id: params [:id])
  	if @catalog.update(product_params)
  		redirect_to @product
	end
  end

  def destroy
  	@catalog = Catalog.find_by(id: params [:id])
  	@catalog.destroy
  	redirect_to root_path
  end
  private
  def product_params
  	params.require(:product).permit(:user_id, :title, :description, :price)
end
end

