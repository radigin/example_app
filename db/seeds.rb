# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

posts = Post.create([{name: 'Директор', full_name: 'Директор по маркетингу'}, {name: 'Глав. бух.', full_name: 'Главный бухгалтер'},
  {name: 'Программист', full_name: 'Программист'}, {name: 'Уборщица', full_name: 'Уборщица'}])
lns = {'м' => ['Пупкин', 'Пупкинский', 'Пупко', 'Пупков', 'Пупковский', 'Пупкинян', 'Пупкинидзе'], 'ж' => ['Пупкина', 'Пупкинская', 'Пупко', 'Пупкова', 'Пупковская', 'Пупкинян', 'Пупкинидзе']}
fns = {'м' => ['Иван', 'Василий', 'Пётр', 'Николай', 'Алексей', 'Андрей', 'Степан'], 'ж' => ['Анна', 'Анастасия', 'Александра', 'Мария', 'Виктория', 'Галина', 'Яна']}
sns = {'м' => ['Иванович', 'Васильевич', 'Петрович', 'Николаевич', 'Алексеевич', 'Андреевич', 'Степанович'], 'ж' => ['Ивановна', 'Васильевна', 'Петровна', 'Николаевна', 'Алексеевна', 'Андреевна', 'Степановна']}
sexes = ['м', 'ж']

for i in 0 ... 100
  sex = sexes[rand(2)]
  ln = lns[sex][rand(lns[sex].size)]
  fn = fns[sex][rand(fns[sex].size)]
  sn = sns[sex][rand(sns[sex].size)]
  bd = Date.new(1980 + rand(18), 1 + rand(12), 1 + rand(28))
  p = Person.create(last_name: ln, first_name: fn, second_name: sn, birthday: bd, sex: sex)
  c = Contract.create(person: p, post: posts[rand(posts.size)], salary: 30 + rand(370))
end

