class Api::V1::SessionsController < ApplicationController

  def create
    @student = Student.find_by(email: params[:email])
    if @student && @student.authenticate(params[:password])
      render "show.json.jbuilder"
    else
      render json: { message: "Error! Invalid email or password." }
    end
  end

  def destroy
    session[:student_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/login'
  end
end
