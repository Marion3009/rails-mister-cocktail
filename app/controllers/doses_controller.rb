class DosesController < ApplicationController

def new
   @cocktail = Cocktail.find(params[:id])
  @dose = Dose.new
end

 def create
  @dose = Dose.new(cocktail_params)
    if @dose.save
      redirect_to dose_path(@cocktail)
    else
      render :new
    end
  end

def dose_params
  params.require(:dose).permit(:description, :ingredient_id)
end
end
