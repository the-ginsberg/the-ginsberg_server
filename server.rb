require "sinatra"

get "/" do
  redirect '/hello.txt'
end

# def hello
#   "Welome to Jeff's first website!"
# end
#
#
# get "/" do
#   hello
# end
#
# get "/blah" do
#   hello
# end
#
# get "/sinatra" do
#   "Hello Sinatra!"
# end
