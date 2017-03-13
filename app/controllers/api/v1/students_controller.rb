class Api::V1::StudentsController < ApplicationController

  def create
    @student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if @student.save
      render "show.json.jbuilder"
    else
      render json: { errors: student.errors.full_messages }
    end
  end

end
