puts "What stock would you like to look up? Please enter the stock symbol."

ticker = gets.chomp

url3 = "http://finance.yahoo.com/q?s=#{ticker}"

response3 = HTTParty.get url3

dom3 = Nokogiri::HTML(response3.body)

my_front_path = '//*[@id="yfs_l84_' + ticker
full_path = my_front_path + "\"]"

stock_price3 = dom3.xpath("#{full_path}").first.content


puts "Your stock is at $ #{stock_price3}"
