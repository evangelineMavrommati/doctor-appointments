# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

doctors = Doctor.create([
  { first_name: "John", last_name: "Doe", email: "doe@notablehealth.com" },
  { first_name: "Jessica", last_name: "White", email: "white@notablehealth.com" },
  { first_name: "Sharon", last_name: "Carter", email: "carter@notablehealth.com" },
  { first_name: "Albert", last_name: "Einstein", email: "einstein@notablehealth.com" },
])

3.times do
  doctors.first.appointments.create(
    time: "07-06-2020 9:30 AM",
    kind: "New Patient",
    patient_first_name: "Evangeline",
    patient_last_name: "Mavrommati"
  )
end

doctors.third.appointments.create(
  time: "07-09-2020 10:30 AM",
  kind: "Follow-up",
  patient_first_name: "Tristan",
  patient_last_name: "Brooks"
)