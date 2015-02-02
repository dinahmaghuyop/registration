class Applicant < ActiveRecord::Base

  attr_accessible :app_type, :contact_number, :course, :email, :first_name,
    :grad_date, :last_name, :start_date, :languages

  TYPES = { :internship => 1, :employment => 2 }

  scope :interns, :conditions => { :app_type => 1 }
  scope :employees, :conditions => { :app_type => 2 }

  validates_presence_of :last_name
  validates_presence_of :first_name
  validates_presence_of :course
  validates_presence_of :email
  validates_presence_of :contact_number
  validates_presence_of :grad_date
  validates_presence_of :app_type
  validates_presence_of :start_date

  def full_name
	"#{first_name} #{last_name}"
  end

end