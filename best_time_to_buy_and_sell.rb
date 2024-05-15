# You are given an array prices where prices[i] is the price of a given stock on the ith day.

# You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

# Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

 

# Example 1:

# Input: prices = [7,1,5,3,6,4]
# Output: 5
# Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
# Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
# Example 2:

# Input: prices = [7,6,4,3,1]
# Output: 0
# Explanation: In this case, no transactions are done and the max profit = 0.

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    if prices.size < 2
      return 0
    else
      profit = 0
      min_price = prices[0]
  
      (1..prices.count-1).each do |k|
        profit = prices[k] - min_price if profit < prices[k] - min_price
        min_price = prices[k] if prices[k] < min_price 
      return profit
    end
  end