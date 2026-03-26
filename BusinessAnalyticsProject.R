
library(ggplot2)
library(corrplot)
library(tm)
library(wordcloud)
library(syuzhet)

path <- "C:/Users/Vivek Singh/Downloads/"
quant_data <- read.csv(paste0(path, "quant_data.csv"), stringsAsFactors = FALSE)
raw_data   <- read.csv(paste0(path, "raw_market_data.csv"), stringsAsFactors = FALSE)
qual_data  <- read.csv(paste0(path, "qual_data.csv"), stringsAsFactors = FALSE)

final_data <- merge(quant_data, raw_data[, c("Date", "India_VIX")], by="Date")


clean_num <- function(x) { as.numeric(gsub("[^0-9.-]", "", as.character(x))) }
final_data$Log_Returns <- clean_num(final_data$Log_Returns)
final_data$India_VIX   <- clean_num(final_data$India_VIX)
final_data$Nifty_Close <- clean_num(final_data$Nifty_Close)
final_data$PCR_Signal  <- clean_num(final_data$PCR_Signal)

final_data$Inst_Flow..Cr. <- clean_num(final_data$Inst_Flow..Cr.) 

print("--- SUMMARY STATISTICS ---")
summary(final_data[, c("Log_Returns", "India_VIX", "Nifty_Close")])


num_cols <- final_data[, c("Nifty_Close", "Log_Returns", "India_VIX", "Inst_Flow..Cr.", "PCR_Signal")]
cor_matrix <- cor(num_cols, use = "pairwise.complete.obs")
corrplot(cor_matrix, method="color", addCoef.col="black", title="Correlation Analysis", mar=c(0,0,1,0))


ggplot(final_data, aes(x=India_VIX, y=Log_Returns)) +
  geom_point(color="steelblue", alpha=0.6) +
  geom_smooth(method="lm", color="red") +
  labs(title="Relationship: Market Fear (VIX) vs. Returns", x="India VIX", y="Log Returns") +
  theme_minimal()

final_data$Date <- as.Date(final_data$Date)
ggplot(final_data, aes(x=Date, y=Nifty_Close)) +
  geom_line(color="darkgreen") +
  geom_smooth(color="orange", linetype="dashed") +
  labs(title="Nifty 50 Trend Line (250 Days)", x="Date", y="Closing Price") +
  theme_minimal()


ggplot(final_data, aes(x=as.factor(PCR_Signal), y=Log_Returns, fill=as.factor(PCR_Signal))) +
  geom_bar(stat="summary", fun="mean") +
  labs(title="Mean Returns by PCR Signal", x="PCR Signal (-1, 0, 1)", y="Avg Returns") +
  theme_minimal()


docs <- Corpus(VectorSource(qual_data$News_Headline))
docs <- tm_map(docs, content_transformer(tolower))
docs <- tm_map(docs, removeWords, stopwords("english"))
docs <- tm_map(docs, removePunctuation)
wordcloud(docs, max.words=50, colors=brewer.pal(8, "Dark2"), scale=c(3, 0.5))

sents <- get_nrc_sentiment(qual_data$News_Headline)
barplot(colSums(sents), las=2, col=rainbow(10), main="News Sentiment Patterns")

print("--- REGRESSION MODEL ---")
summary(lm(Log_Returns ~ India_VIX + PCR_Signal, data=final_data))
