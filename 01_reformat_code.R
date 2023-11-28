height <- fread('new_AFR_height_gwas.txt') #28987534
height <- replace(height, height=='', NaN)
df <- na.omit(height) #23861809
write.table(df, file = 'samp_AFR_height_gwas.txt', append = FALSE, quote = FALSE, sep = " ", dec = ".", row.names = FALSE, col.names = TRUE)
