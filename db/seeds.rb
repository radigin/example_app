# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p = Person.create(last_name: 'Пупкин', first_name: 'Василий', second_name: 'Алексеевич', birthday: Date.new(1990, 10, 10), sex: 'м')
s = Post.create(name: 'Директор', full_name: 'Директор по маркетингу')
c = Contract.create(person: p, post: s, salary: 400.0)
p = Person.create(last_name: 'Пупкина', first_name: 'Василиса', second_name: 'Алексеевна', birthday: Date.new(1990, 10, 10), sex: 'ж')
s = Post.create(name: 'Глав. бух.', full_name: 'Главный бухгалтер')
c = Contract.create(person: p, post: s, salary: 300.0)
p = Person.create(last_name: 'Пупкинский', first_name: 'Василий', second_name: 'Алексеевич', birthday: Date.new(1990, 10, 10), sex: 'м')
s = Post.create(name: 'Программист', full_name: 'Программист')
c = Contract.create(person: p, post: s, salary: 150.0)
p = Person.create(last_name: 'Пупко', first_name: 'Василиса', second_name: 'Алексеевна', birthday: Date.new(1990, 10, 10), sex: 'ж')
s = Post.create(name: 'Уборщица', full_name: 'Уборщица')
c = Contract.create(person: p, post: s, salary: 30.0)

