class ContenttypesController < ApplicationController
    def index
      @contenttypes = Contenttype.all
    end	

  	def show
      @contenttype = Contenttype.find(params[:id])
  	end

  	def new
  		@contenttype= Contenttype.new
  	end

  	def edit
      @contenttype = Contenttype.find(params[:id])
  	end

    def create
      @contenttype = Contenttype.new(contenttype_params)
      if @contenttype.save
        redirect_to @contenttype, notice: 'Enclosure was successfully created.' 
      else
        render 'new' 
      end
    end

  	def update
    	@contenttype = Contenttype.find(params[:id])
      if @contenttype.update(contenttype_params)
        redirect_to @contenttype, notice: 'Enclosure was successfully updated.' 
      else
        render 'edit'
      end
    end

  	def destroy
      @contenttype = Contenttype.find(params[:id])
    	@contenttype.destroy
    	redirect_to contenttypes_path, notice: 'Enclosure was successfully destroyed.' 
    end

	private
    def contenttype_params
    	params.require(:contenttype).permit(:name)
		end
end
