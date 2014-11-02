require 'yaml'

path = Rails.root.join('db/seed_data.yaml')
seed_data = YAML.load File.read path

users = seed_data[:users]
professions = seed_data[:professions]

users.each do |attrs|
  User.new(attrs).save(:validate => false)
end

professions.each do |attrs|
  Profession.new(attrs).save(:validate => false)
end

30.times do
	Professional.create(
		user_id: User.all.sample.id,
		profession_id: Profession.all.sample.id,
		years_of_exp: [*3..30].sample,
		bio: Faker::Lorem.paragraph(2)
		)
end


professionals = Professional.all

professionals.each do |professional|
	Ticket.create(
		user_id: User.all.sample.id,
		professional_id: professional.id,
		profession_id: professional.profession.id,
		title: Faker::Lorem.sentence(15),
		body: Faker::Lorem.paragraph(1),
		)
end


