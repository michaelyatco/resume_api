class Api::V1::SessionsController < ApplicationController
  # def new
  #   render 'new.html.erb'
  # end

  def create
    @student = Student.find_by(email: params[:email])
    if @student && @student.authenticate(params[:password])
      # session[:student_id] = student.id
      # flash[:success] = 'Successfully logged in!'
      render "show.json.jbuilder"
    else
      render json: { message: "Error! Invalid email or password." }
      # flash[:warning] = 'Invalid email or password!'
      # redirect_to '/login'
    end
  end

  def destroy
    session[:student_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/login'
  end
end
