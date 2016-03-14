class ContactsController < ApplicationController
	
   def index
    @contacts = Contact.all
  end

  # GET /professors/1
  def show
    @contact = Contact.find(params[:id])
  end

  # GET /professors/new
  def new
    @contact = Contact.new
  end

  # GET /professors/1/edit
  def edit
    @contact = Contact.find(params[:id])
  end

  # POST /professors
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to @contact, notice: 'Animal was successfully created.' 
    else
      render 'new' 
    end
  end

  # PATCH/PUT /professors/1
  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to @contact, notice: 'Animal was successfully updated.' 
    else
      render 'edit'
    end
  end

  # DELETE /professors/1
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path, notice: 'Animal was successfully destroyed.'
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, medium_ids:[], contenttype_ids:[])
    end
end
