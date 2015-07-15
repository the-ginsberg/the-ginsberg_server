require "sinatra"
require "httparty"
require "nokogiri"

get "/" do

  # puts "What stock would you like to look up? Please enter the stock symbol."

  # ticker = gets.chomp

  url3 = "http://finance.yahoo.com/q?s=aapl"

  response3 = HTTParty.get url3

  dom3 = Nokogiri::HTML(response3.body)

  stock_price3 = dom3.xpath('//*[@id="yfs_l84_aapl"]').first.content


   "Your stock is at $ #{stock_price3}"

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
