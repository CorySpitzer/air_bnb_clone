# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admins = User.create([{ name: 'ian', password: '123', email: 'ian@ian.com', username: 'ian1' },
                       { name: 'cory', password: 'a', email: 'cs@cs.com', username: 'cory1' }])
