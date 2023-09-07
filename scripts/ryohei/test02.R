load("data/processed/my_objects.RData")

okamoto

# 結果と要約

oka.pca <- princomp(okamoto)
summary(oka.pca)
oka.pca$loadings


plot(oka.pca$loadings[,1:2], type="n")

text(oka.pca$loadings, colnames(okamoto))

# 主成分得点

round(oka.pca$scores, 2)

plot(oka.pca$scores[,1], oka.pca$scores[,2], type="n")
text(oka.pca$scores[,1], oka.pca$scores[,2], 1:6)

# 予測
oka.pc1 <- princomp(okamoto[1:10,])
plot(oka.pc1$scores[,1], oka.pc1$scores[,2], type="n")
text(oka.pc1$scores[,1], oka.pc1$scores[,2], 1:10)
oka.pre <- predict(oka.pc1, okamoto[11:16,])
plot(oka.pre[,1], oka.pre[,2], type="n")
text(oka.pre[,1], oka.pre[,2], 11:16)

# バイプロット

biplot(oka.pca)