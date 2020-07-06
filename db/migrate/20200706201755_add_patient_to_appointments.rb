class AddPatientToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :patient_first_name, :string
    add_column :appointments, :patient_last_name, :string
  end
end
