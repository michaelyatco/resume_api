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
    student.assign_attribute(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], short_bio: params[:short_bio], linkedin_url: params[:linkedin_url], twitter_handle: params[:twitter_handle], personal_website_url: params[:personal_website_url], online_resume_url: params[:online_resume_url], github_url: params[:github_url], photo: params[:photo])

    params[:experiences].each do |experience_hash|
      experience = Experience.find_by(id: experience_hash[:id])
      experience.update(start_date: experience_hash[:start_date])
    end

    params[:skills].each do |skills_hash|
      skill = Skill.find_by(id: skills_hash[:id])
      skill.update(skill_name: skills_hash[:skill_name])
    end

    params[:educations].each do |educations_hash|
      educations = Education.find_by(id: educations_hash[:id])
      educations.update(start_date: params[:start_date], end_date: params[:end_date], degree: params[:degree], university: params[:university], details: params[:details])
    end
    params[:capstones].each do |capstones_hash|
      capstones = Capstone.find_by(id: capstones_hash[:id])
      capstones.update(name: params[:name], description: params[:description], url: params[:url], screenshot: params[:screenshot])
    end
  end

  def destroy
    student = Student.find_by(id: params[:id])
    student.delete
    student.educations.delete
    student.experiences.delete
    student.capstones.delete
    student.skills.delete
  end
end
