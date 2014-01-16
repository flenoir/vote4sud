class VillesController < ApplicationController
	def new
		@ville = Ville.new
	end

	def index
  @villes = Ville.all
	end

	def show
  @ville = Ville.find(params[:id])
	end

	def edit
  	@ville = Ville.find(params[:id])
	end

	def update
  	@ville = Ville.find(params[:id])
 
  		if @ville.update(params[:ville].permit(:nom, :departement))
    	redirect_to @ville
  		else
    	render 'edit'
  		end
	end

	def create
   @ville = Ville.new(params[:ville].permit(:nom, :departement))

   if  @ville.save
   redirect_to @ville
	else
	render 'new'
	end
	end

	def destroy
  	@ville = Ville.find(params[:id])
  	@ville.destroy
 
  	redirect_to villes_path
	end

	private
	def ville_params
		params.require(:ville).permit(:nom, :departement)
	end
end
 