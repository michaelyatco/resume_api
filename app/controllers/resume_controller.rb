class ResumeController < ApplicationController
  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end
  def show
    @Student = Student.find_by(id: params[:id])
  end

  def new
    
  end

  def create
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end
end
