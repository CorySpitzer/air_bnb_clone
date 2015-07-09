# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admins = User.create([{ name: 'ian', password: '12341234', email: 'ian@ian.com', username: 'ian1', admin: true },
                       { name: 'cory', password: 'aaaaaaaa', email: 'cs@cs.com', username: 'cory1', admin: true }])
