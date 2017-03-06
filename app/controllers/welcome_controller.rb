class WelcomeController < ApplicationController
  def register
    if  ( params.has_key?(:first_name) && !params[:first_name].strip.empty? ) &&

      ( params.has_key?(:last_name) && !params[:last_name].strip.empty? ) &&

      ( params.has_key?(:email) && !params[:email].strip.empty? ) &&

      ( params.has_key?(:address) && !params[:address].strip.empty? )

      first_name = params[:first_name]

      user = User.new
      user.name = first_name
      user.save
      session[:user_id] = user.id.to_s


      last_name = params[:last_name]
      email = params[:email]
      address = params[:address]

      render text: "First Name is " + first_name


    # else
    #   redirect 'welcome'
    end
  end






end#ends WelcomeController
