class MediaController < ApplicationController
    
    def index
    	@media = Medium.all
    end	

  	def show
      @medium = Medium.find(params[:id])
  	end

  	def new
  		@medium= Medium.new
  	end

  	def edit
      @medium = Medium.find(params[:id])
  	end

  	def create
  		@medium = Medium.new(medium_params)
  		if @medium.save
        redirect_to @medium, notice: 'Species was successfully created.' 
      else
        render 'new' 
      end
    end

  	def update
    	@medium= Medium.find(params[:id])
      if @medium.update(medium_params)
        redirect_to @medium, notice: 'Species was successfully updated.' 
      else
        render 'edit'
      end
    end
  	
    def destroy
    	@medium= Medium.find(params[:id])
      @medium.destroy
    	redirect_to media_path, notice: 'Species was successfully destroyed.' 
    end

	private
		def medium_params
    		params.require(:medium).permit(:name)
		end
end
