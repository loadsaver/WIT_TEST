
require	'yahoofinance'

def get_stock_price(ticker)
	return YahooFinance::get_quotes(YahooFinance::StandardQuote, 
			ticker)[ticker].lastTrade
end	

def get_transaction_value(ticker, shares)
		return get_stock_price(ticker) * shares
end

class Stock
	attr_reader :ticker, :number_of_shares
	# ticker
	# number of shares
	def initialize(ticker, number_of_shares)