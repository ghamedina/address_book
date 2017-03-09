class WelcomeController < ApplicationController
  def register

    @contacts = Contact.all

    if  ( params.has_key?(:name) && !params[:name].strip.empty? ) &&
        ( params.has_key?(:last_name) && !params[:last_name].strip.empty? ) &&
        ( params.has_key?(:email) && !params[:email].strip.empty? ) &&
        ( params.has_key?(:address) && !params[:address].strip.empty? )

      #save first name
      contact = Contact.new(name: params[:name], last_name: params[:last_name], email: params[:email], address: params[:address])
      contact.save
      session[:contact_id] = contact.id.to_s

      redirect_to '/welcome/register'

    # else
    #   redirect_to 'welcome#register'
    end
  end






end#ends WelcomeController
