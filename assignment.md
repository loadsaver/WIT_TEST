
## GA Stock Exchange Lab (Homework)

**Objectives:**

* Build an Ruby program using test-driven development that reviews concepts learned this week.

**Activity:**

Create a stock management program using TDD. It has to:
* Create an account for client (name, balance).
* Every client can create multiple portfolios.
* A client can buy stocks at market rate; these stocks will be added to a portfolio and the purchase amount subtracted from cash. (You cannot go to a negative cash balance).
* A client can sell a stock. The proceeds go into his account.
* List all client portfolios and their values (each portfolio value and sum of portfolio values) and the account balance.
* List all stocks in a portfolio.
* List all clients.

**Note:**

Each time a portfolio balance is calculated, the program needs to go out to the web and get current 
stock prices.

Hint: in your Gemfile, add the yahoofinance gem
Remember to require it!


```
# Hint: Write a very short test file to convince yourself that you can get a
# ticker from yahoofinance
YahooFinance::get_quotes(YahooFinance::StandardQuote, 'AAPL')['AAPL'].lastTrade
```