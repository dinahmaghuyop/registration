class ApplicantsController < ApplicationController

  def index
    @applicants = Applicant.all

    @deleted_applicant = params[:deleted_applicant]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applicants }
    end
  end


  def show
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @applicant }
    end
  end


  def new
    @applicant = Applicant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @applicant }
    end
  end


  def edit
    @applicant = Applicant.find(params[:id])
  end


  def create
    @applicant = Applicant.new(params[:applicant])

    respond_to do |format|
      if @applicant.save
        format.html { redirect_to [:new, :applicant], notice: "Thank you, #{@applicant.first_name}!<br /><small>You will be hearing from us soon!</small>".html_safe }
        format.json { render json: @applicant, status: :created, location: @applicant }
      else
        format.html { render action: "new" }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      if @applicant.update_attributes(params[:applicant])
        format.html { redirect_to [:edit, @applicant], notice: 'Profile successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @applicant = Applicant.find(params[:id])
    @applicant.destroy

    respond_to do |format|
      format.html { redirect_to applicants_url(:deleted_applicant => @applicant.first_name) }
      format.json { head :no_content }
    end
  end
end
