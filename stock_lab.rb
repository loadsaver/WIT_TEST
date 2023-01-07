
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
		@ticker = ticker
		@number_of_shares = number_of_shares
	end	

	def buy_shares(shares_to_buy)
		# @number_of_shares = @number_of_shares + shares_to_add
		@number_of_shares += shares_to_add
	end