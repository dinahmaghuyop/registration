class Applicant < ActiveRecord::Base
  attr_accessible :app_type, :contact_number, :course, :email, :first_name, :grad_date, :last_name, :start_date
end
