Member.destroy_all
Doctor.destroy_all
Appointment.destroy_all
Prescription.destroy_all
Vital.destroy_all

maya = Member.create(
  {
    username: 'MayaPapaya',
    password: 'maya1',
    firstname: 'Maya',
    lastname: 'Papaya',
    birthday: '01/29/2000',
    prescription: med
  }
)

hana = Doctor.create(
  {
    username: 'HanaBanana',
    password: 'hana1',
    firstname: 'Hana',
    lastname: 'Banana'
  }
)

med = Prescription.create(
  {
    name: 'Vitamins',
    dose: 1
  }
)

info = Vital.create(
  {
    bp: 100,
    hr: 60,
    weight: 120
  }
)

Appointment.create(
  [
    { member: maya, doctor: hana, vital: info }
  ]
)
