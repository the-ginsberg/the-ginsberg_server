require "sinatra"

get "/" do
  file.read(File.join('public', 'index.html'))

end
