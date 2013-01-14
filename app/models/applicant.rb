class Applicant < ActiveRecord::Base
  attr_accessible :app_type, :contact_number, :course, :email, :first_name, :grad_date, :last_name, :start_date

  TYPES = { :internship => 1, :employment => 2 }
  
  scope :interns, :conditions => { :app_type => 1 }
  scope :employees, :conditions => { :app_type => 2 }

	
  def full_name
	"#{first_name} #{last_name}"
  end
 end
