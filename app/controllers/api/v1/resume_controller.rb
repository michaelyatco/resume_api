class Api::V1::ResumeController < ApplicationController
  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end
  def show
    @student = Student.find_by(id: params[:id])
  end

  def update
    student =  Student.find_by(id: params[:id])

    params[:experiences].each do |experience_hash|
      experience = Experience.find_by(id: experience_hash[:id])
      experience.update(start_date: experience_hash[:start_date])
    end

    student.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], short_bio: params[:short_bio], linkedin_url: params[:linkedin_url], twitter_handle: params[:twitter_handle], personal_website_url: params[:personal_website_url], online_resume_url: params[:online_resume_url], github_url: params[:github_url], photo: params[:photo])

    params[:skills].each do |skills_hash|
      skill = Skill.find_by(id: skills_hash[:id])
      skill.update(skill_name: skills_hash[:skill_name])
    end

    params[:educations].each do |educations_hash|

    end
  end

  def destroy
    
  end
end
