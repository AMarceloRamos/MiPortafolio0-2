class ContactFormsController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(contact_form_params)
    if @contact_form.save
      flash[:success] = "¡Mensaje enviado correctamente!"
      redirect_to new_contact_form_path
    else
      render :new
    end
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:name, :phone, :email, :message)
  end
end
