#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#profit
#R=revenue....E=expenses
R <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
E <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

profit <- R - E
profit

#proft_after_tax....... at 30% rate 
#30% of profit
rate <- (0.3 * profit)
#round off the rate to 2decimal places
new_rate <- round(rate, digits=2)
new_rate

profit_after_tax <- profit - new_rate
profit_after_tax

#profit margin for each month = profit after tax / revenue
profit_margin <- profit_after_tax / R
profit_margin
#round it off to 2 decimal places and present your ans in %
New_profit_margin <- round(profit_margin, digits=2) * 100
New_profit_margin

#good months ....where the profit after tax was greater than the mean for the yr
#what is the mean of the profit after tax ?
mean_pat <- mean(profit_after_tax)
mean_pat

good_months <- profit_after_tax > mean_pat
good_months

#bad months.....where the profit after tax was less than the mean for the yr.
bad_months <- profit_after_tax < mean_pat
bad_months

#best months.....where the profit after tax is max for the yr.
#first find the max of the profit after tax
max_pat <- max(profit_after_tax)
max_pat

best_months <- profit_after_tax == max_pat
best_months

#worst months.....where the profit after tax was min for the yr.
#find the min of the profit after tax
min_pat <- min(profit_after_tax)
min_pat

worst_month <- profit_after_tax == min_pat
worst_month

#convert all calculations to a unit of 1000 (1k)..... which means each result divided by 1000
R.1000 <- round(R / 1000, digits=0)
R.1000
E.1000 <- round(E/1000, digits=0) 
E.1000
profit.1000 <- round(profit/1000, digits=0)
profit.1000
tax_rate.1000 <- round(new_rate/1000, digits=0)
tax_rate.1000
pat.1000 <- round(profit_after_tax/1000, digits=0)
pat.1000
profit_margin.1000 <- round(New_profit_margin/1000, digits=0)
profit_margin.1000

M <- rbind(R.1000, E.1000, profit.1000, tax_rate.1000, pat.1000, New_profit_margin, mean_pat, max_pat, min_pat, good_months, bad_months, worst_month, best_months)
M
#assign the column title with 12months
colnames(M) <- c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
M

