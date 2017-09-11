require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')

get('/') do
  erb(:input)
end

get('/output') do
  triangle = Triangle.new(0,0,0)
  @length = params.fetch("length")
  @width = params.fetch("width")
  @height = params.fetch("height")
  triangle = Triangle.new(@length, @width, @height)

  @string_to_display = "This is #{triangle.triangle_check} triangle."

  erb(:output)
end
