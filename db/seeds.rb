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

20.times do
	Professional.create(
		user_id: User.all.sample.id,
		profession_id: Profession.all.sample.id,
		years_of_exp: [*3..30].sample,
		bio: "I'm good at this shit. I've been doing it for over 700 years"
		)
end


professionals = Professional.all

3.times do
	professionals.each do |professional|
		Ticket.create(
			user_id: User.all.sample.id,
			professional_id: professional.id,
			profession_id: professional.profession.id,
			title: "Help I think I broke some of my shit! Can somebody help?",
			body: "
			example body text goes here, but then again maybe not. please help me fix my kitchen sink.
			example body text goes here, but then again maybe not. please help me fix my kitchen sink.
			example body text goes here, but then again maybe not. please help me fix my kitchen sink.
			example body text goes here, but then again maybe not. please help me fix my kitchen sink.
			example body text goes here, but then again maybe not. please help me fix my kitchen sink.
			example body text goes here, but then again maybe not. please help me fix my kitchen sink.
			example body text goes here, but then again maybe not. please help me fix my kitchen sink.
			"
			)
	end
end


