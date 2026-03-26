Nifty 50 Sentiment Engine: Integrated Market Analytics & NLP
A sophisticated financial analytics framework that bridges the gap between quantitative technical indicators and qualitative market narratives. By synthesizing 250 days of trading data with Natural Language Processing, this engine provides deep insights into the drivers of the Nifty 50 index.

🚀 Executive Summary
The Nifty 50 Sentiment Engine is a multi-dimensional analysis tool developed in R. It evaluates market health through three primary lenses:

Risk Volatility: Analysis of the India VIX to identify market regimes.

Derivative Flow: Put-Call Ratio (PCR) modeling to gauge investor positioning.

News Sentiment: NLP-based extraction of emotional patterns from financial headlines.

🛠️ Technical Stack
Language: R (v4.0+)

Data Science: ggplot2, corrplot, tm (Text Mining)

Natural Language Processing: syuzhet (Sentiment Extraction)

Data Management: Integrated CSV-based relational modeling

📊 Visual Insights & Analytics
1. The Managerial Dashboard
The central hub for data visualization, providing a high-level overview of the 250-day observation period, including price trends, PCR accuracy, and average volatility metrics.

Figure 1: Excel-based managerial dashboard for executive reporting.

2. Quantitative Intelligence (Study 1)
Using Pearson correlation and linear regression, the engine identifies how "Fear" (India VIX) and "Speculation" (PCR) impact daily log returns.

<p align="center">
<img src="plots/Correlation_Heatmap.png" width="45%" />
<img src="plots/Scatter_Plot.png" width="45%" />
</p>

Figure 2 & 3: Correlation Matrix and Regression Analysis demonstrating the inverse relationship between VIX and Returns.

3. Qualitative Text Mining (Study 2)
By processing over 250 financial headlines, the engine identifies dominant market themes and classifies the "emotional pulse" of the market.

<p align="center">
<img src="plots/Word_Cloud.png" width="45%" />
<img src="plots/Sentiment_Patterns.png" width="45%" />
</p>

Figure 4 & 5: NLP-generated Word Cloud and Emotion Distribution (Trust, Anticipation, and Fear).

📂 Repository Structure
Plaintext
├── code/
│   └── Nifty_Analysis.R      # Complete R Script (Cleanup, Merging, Modeling)
├── data/
│   ├── quant_data.csv        # Quantitative model inputs
│   ├── raw_market_data.csv   # Volatility and Price raw data
│   └── qual_data.csv         # News headlines for NLP
├── plots/
│   ├── Word_Cloud.png        # Generated Visuals
│   ├── Scatter_Plot.png
│   └── Correlation_Heatmap.png
└── README.md                 # Project Documentation
⚙️ Installation and Execution
Clone the Repo: git clone https://github.com/YourUsername/Nifty50-Sentiment-Engine.git

Install Dependencies:

R
install.packages(c("ggplot2", "corrplot", "tm", "wordcloud", "syuzhet"))
Run Analysis: Execute Nifty_Analysis.R to regenerate all statistical models and plots.

📈 Key Analytical Findings
Inverse Correlation: A strong negative correlation exists between the India VIX and index returns, confirming the "Fear Gauge" theory.

Sentiment Lag: News sentiment (processed via tm and syuzhet) often serves as a leading indicator during high-volatility regimes.

PCR Efficacy: The Put-Call Ratio proved most predictive of "Next Day Trends" during Stable volatility periods.
