#1.
  #100 names, only 5+ characters or longer

company_directory = []
until company_directory.size == 100 do
  name = Faker::Name.first_name
  company_directory << name if name.length >= 5
end
puts company_directory.sort!

#2.
  #array of hash => 25 names and emails
  #[{name: 'Brad', email: 'brad@groznik.com'},]

hash_directory = []
until hash_directory.size == 25 do
  name = Faker::Name.first_name
  email = Faker::Internet.email(name: "#{name}")
  hash_directory << {name: "#{name}", email: "#{email}"}
end
puts hash_directory

#or
hash_directory = []
until hash_directory.size == 5 do
  name = Faker::Name.first_name
  hash_directory << {name: "#{name}", email: "#{name}@bradisking.com"}
end
puts hash_directory

#3.
  #array of hash => 25 names and emails
  # email derrived from first initial and last name
  #[{name: 'Dorla Feest', email: 'd.dfeest@gmail.com'},]

hash_directory = []
until hash_directory.size == 2 do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email(name: "#{first_name.chars[0]}#{last_name}")
  hash_directory << {name: "#{first_name} #{last_name}", email: "#{email}"}
end
puts hash_directory
