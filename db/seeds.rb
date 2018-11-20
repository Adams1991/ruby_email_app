# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

email_template = EmailTemplate.create(subject: "Test Template", body: "We need to test if this saves")

sent_email = SentEmail.create(recipient_name:'Bob', recipient_email: 'bob@example.com', subject: "Test Email", body: "We need this for the front end testing")
