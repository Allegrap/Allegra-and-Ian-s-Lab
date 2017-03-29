require_relative('../models/house')
require_relative('../models/student')
require('pry-byebug')

Student.delete_all()
House.delete_all()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house1.id,
  "age" => 15
  })

student2 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "house_id" => house2.id,
  "age" => 15
  })



house1 = House.new({
  "name" => "Gryffindor"
  })

house2 = House.new({
  "name" => "Slytherin"
  })

house3 = House.new({
  "name" => "Hufflepuff"
  })

house4 = House.new({
  "name" => "Ravenclaw"
  })

house1.save()
house2.save()
house3.save()
house4.save()

student1.save()
student2.save()

binding.pry
nil