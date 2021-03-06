require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require('./models/student')
require('./models/house')

get '/students' do
  @students = Student.all()
  erb(:index)
end

get '/students/new' do
  @houses = House.all()
  erb(:new)
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:created)
end

post '/students/:id/delete' do
  @student = Student.find(params[:id])
  @student.delete()
  erb(:delete)
end

get '/students/:id/update' do
  @houses = House.all()
  @student = Student.find(params['id'])
  erb(:update)
end

post '/students/:id' do
  @student = Student.new(params)
  @student.update()
  erb(:edited)
end

get '/students/new' do
  erb(:new)
end

get '/students/gryffindor' do
  erb(:gryffindor)
end

get '/students/slytherin' do
  erb(:slytherin)
end

get '/students/ravenclaw' do
  erb(:ravenclaw)
end

get '/students/hufflepuff' do
  erb(:hufflepuff)
end

get '/students/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end