data = read.csv("Housing.csv")
str(data)
head(data)


model_housing_price_ = lm(formula =  price ~ area + bedrooms + bathrooms + stories + parking, data = data)
ggplot(data = data, aes(x = area, y = price)) + geom_point(col = "black") + 
  geom_line(aes(y = predict(model_housing_price_)), col = "red") + 
  ggtitle("Regression analysis") + xlab("area") + ylab("price")


newdata = data.frame(area = 8000, bedrooms = 4, bathrooms = 2, stories = 4, parking = 2)

predict_ = predict(model_housing_price_, newdata)
predict_
