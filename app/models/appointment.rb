# == Schema Information
#
# Table name: appointments
#
#  id                 :integer          not null, primary key
#  time               :datetime
#  kind               :string
#  doctor_id          :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  patient_first_name :string
#  patient_last_name  :string
#
class Appointment < ApplicationRecord
  belongs_to :doctor
end
