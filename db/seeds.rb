

# 100.times do
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name

#   contact = Contact.new(
#                         first_name: first_name,
#                         last_name: last_name,
#                         email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
#                         phone_number: Faker::PhoneNumber.phone_number
#                         )

#   contact.save
# end

# Group.create(name: "Chicago")
# Group.create(name: "Relative")
# Group.create(name: "School")
# Group.create(name: "Owes Me Money")

# groups = Group.all

users = User.all

Contact.all.each do |contact|
  contact.update(user_id: users.sample.id)
end