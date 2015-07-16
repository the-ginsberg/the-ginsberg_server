require "sinatra"
require "httparty"
require "nokogiri"

get "/" do

  # puts "What stock would you like to look up? Please enter the stock symbol."

  # ticker = gets.chomp

  # url3 = "http://finance.yahoo.com/q?s=aapl"
  #
  # response3 = HTTParty.get url3
  #
  # dom3 = Nokogiri::HTML(response3.body)
  #
  # stock_price3 = dom3.xpath('//*[@id="yfs_l84_aapl"]').first.content
  #
  #
  #  "Your stock is at $ #{stock_price3}"

   # These code snippets use an open-source library.
response = HTTParty.get "https://ronreiter-meme-generator.p.mashape.com/meme?bottom=is+DOPE&font=Impact&font_size=50&meme=Condescending+Wonka&top=MY+WEBSITE",
  headers:{
    "X-Mashape-Key" => "P0fN9NWdbCmshpsgvVM8j3ARfYkyp18A8KyjsnKsbe0vNFrD52"
  }

  response

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
