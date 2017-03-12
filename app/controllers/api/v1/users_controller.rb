class Api::V1::UsersController < ApplicationController
  # def new
  #   render 'new.html.erb'
  # end

  def create
    @user = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if @user.save
      # session[:user_id] = user.id
      # flash[:success] = 'Successfully created account!'
      render "show.json.jbuilder"
    else
      # flash[:warning] = 'Invalid email or password!'
      render json: { errors: user.errors.full_messages }
    end
  end

end
