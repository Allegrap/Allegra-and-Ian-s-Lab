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

get '/students/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end

post '/students/:id/delete' do
  @student = Student.find(params[:id])
  @student.delete()
  erb(:delete)
end

get '/students/new' do
  erb(:new)
end