# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p = Person.create(last_name: 'Пупкин', first_name: 'Василий', second_name: 'Алексеевич', birthday: Date.new(1990, 10, 10), sex: 'м')
s = Post.create(name: 'Директор', full_name: 'Директор по маркетингу')
c = Contract.create(person: p, post: s, salary: 100.0)

