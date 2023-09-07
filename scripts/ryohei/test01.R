# データの読み込み

tmp <- scan("./data/raw/oka.csv", what=numeric(), sep=",")

okamoto <- t(matrix(tmp, 5, 16, byrow=F))

# 以下でも同じ
# okamoto <- matrix(tmp, 16, 5, byrow=T)

colnames(okamoto) <- c("A", "B", "C", "D", "E")

# 処理データの保存

save(okamoto, file="data/processed/my_objects.RData")

