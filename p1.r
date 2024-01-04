month_names<-c("January","Feb","march","april","May","June","July","August","September","october","November","December")
month_revenue<-c(150,200,180,220,250,210,190,230,240,260,180,200)
month_expences<-c(100,110,90,120,130,120,110,140,150,140,200,110)
monthly_profit<-month_revenue-month_expences
monthly_profit_in_k<-monthly_profit/1000
#Profit after tax for each month(Tax Rate is 30%)
tax_rate<-0.30
monthly_profit_after_tax<-monthly_profit*(1-tax_rate)
monthly_profit_after_tax_in_k<-monthly_profit_after_tax/1000
#Profit margin for each month equals to profit after tax divided by revenue.
profit_margin<-(monthly_profit_after_tax/month_revenue)*100
#Good Months – where the profit after tax was greater than the mean for the year.
mean_profit_tax<-mean(monthly_profit_after_tax)
good_months<-monthly_profit_after_tax>mean_profit_tax
#Bad Months – where the profit after tax was less than the mean for the year
bad_months<-monthly_profit_after_tax<mean_profit_tax
#The best month – where the profit after tax was max for the year.
best_month<-which.max(monthly_profit_after_tax)
best_month_message<-sprintf("The best month is %s",month_names[best_month])
#The worst month – where the profit after tax was min for the year
worst_month<-which.min(monthly_profit_after_tax)
worst_month_message<-sprintf("The worst month is %s",month_names[worst_month])

results<-data.frame(
  Month=1:12,
  Month_Name=month_names,
  Monthly_Revenue=month_revenue,
  Monthly_Expences=month_expences,
  Monthly_profit=monthly_profit_in_k,
  monthly_profit_After_Tax=monthly_profit_after_tax_in_k,
  Profit_Margin=profit_margin
)
print(results)
cat(best_month_message,"\n")
cat(worst_month_message,"\n")

#create a csv file for the data
write.csv(results,file="financial_statement.csv",row.names = FALSE)
cat("\nA CSV file by the name financial_statement.csv is created in your current folder\n\n")