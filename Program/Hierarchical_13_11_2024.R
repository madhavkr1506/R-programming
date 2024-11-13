iris

iris_ = iris

iris_$Species = NULL

d = dist(iris_,method = "euclidean")

hfit = hclust(d)

plot(hfit)

graphs = cutree(hfit, k = 4)
graphs
rect.hclust(hfit, k = 4, border = "red")
