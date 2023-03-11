
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

	def selling_shares(shares_to_sell)
		# @number_of_shares = @number_of_shares + shares_to_add
		if shares_to_sell < @number_of_shares
			@number_of_shares -= shares_to_sell
		else
			return false
		end
	end

	def get_price
		get_stock_price(@ticker)
	end	
end

class Portfolio
	# value
	# portfolio_name
	def initialize
		@stocks={}
	end	

	# Pass balance here? 
	def add_stock(ticker, number_of_shares)
		if @stocks[ticker]
			# we already have a stock that exists
		else
			# we need to add a stock object
		end
	end
end	

class Client
	# cash_balance
	def initialize(initial_cash_balance)
		@portfolios = {}
		@cash_balance=initial_cash_balance
	end	

	def add_portfolio(portfolio_name)
		# Check to see if portfolio exists
		# add it if it doesn't
	end	
