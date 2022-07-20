# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Technology.create(name: 'Bash')
Technology.create(name: 'Closure')
Technology.create(name: 'C++')
Technology.create(name: 'C#')
Technology.create(name: 'Elixir')
Technology.create(name: 'Java')
Technology.create(name: 'JavaScript')
Technology.create(name: 'Julia')
Technology.create(name: 'PHP')
Technology.create(name: 'Python')
Technology.create(name: 'Ruby')
Technology.create(name: 'Rust')
Technology.create(name: 'Scala')
Technology.create(name: 'Swift')
Technology.create(name: 'Typescript')

User.create(name: 'Sergei Krylov', trigram: 'SKR')
User.create(name: 'Camille Leonard', trigram: 'CLE')
User.create(name: 'Edgard Arakaki', trigram: 'EAR')
User.create(name: 'Nicolas Daxhelet', trigram: 'NDA')

s1 = CodeRetreatSession.create(performed_on: Date.today)

User.all.each do |u|
  Participation.create(user: u, code_retreat_session: s1, primary_technology: Technology.first(2).sample)
end
