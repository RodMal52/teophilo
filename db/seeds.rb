# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.create(:name => role )
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.create(:first_name => ENV['ADMIN_NAME'].dup, :last_name => ENV['ADMIN_LASTNAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup, :cargo  => "Desarrollador Web", :inst => "ITESM CEM", :sitio => "www.teophilo.com", :bio => "Desarrollador web cursando 8vo semestre de ISC en el ITESM CEM", :zona => "Edo. Mex" )
puts 'user: ' << user.first_name
user.add_role :admin