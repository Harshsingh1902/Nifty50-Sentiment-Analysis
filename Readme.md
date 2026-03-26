# 📈 NIFTY 50 SENTIMENT ENGINE: INTEGRATED FINANCIAL ANALYTICS & NLP

[![Live Dashboard](https://img.shields.io/badge/Live_Dashboard-Vercel-black?style=for-the-badge&logo=vercel)](https://nifty50-sentiment-analysis-k3m7ysvmh-harshs-projects-bb975306.vercel.app/)

A professional-grade financial analytics framework designed to bridge the gap between **#Quantitative Market Indicators** and **#Qualitative Market Narratives**. This project utilizes R-based statistical modeling and Natural Language Processing (NLP) to analyze 250 days of trading data from the Nifty 50 index.

---

## 🌐 LIVE INTERACTIVE DASHBOARD
Experience the real-time visual representation of the market engine:
🔗 **[View Live Sentiment Dashboard](https://nifty50-sentiment-analysis-k3m7ysvmh-harshs-projects-bb975306.vercel.app/)**

---

## 🚀 PROJECT OVERVIEW
The **Nifty 50 Sentiment Engine** provides a multi-dimensional view of market health. By synthesizing technical data with news sentiment, it evaluates:
1. **#VolatilityRegimes:** Analyzing the India VIX to identify high-risk vs. stable market environments.
2. **#DerivativeFlow:** Modeling the Put-Call Ratio (PCR) to gauge institutional investor positioning.
3. **#NLPAnalytics:** Using Natural Language Processing to extract emotional patterns from 250+ financial headlines.

---

## 🛠️ TECHNICAL STACK
* **Frontend Deployment:** `Vercel` / `HTML5` / `CSS3`
* **Data Science Language:** `R (v4.0+)`
* **Statistical Libraries:** `ggplot2`, `corrplot`
* **Text Mining & NLP:** `tm`, `wordcloud`, `syuzhet`
* **Data Architecture:** `Microsoft Excel` (Advanced Spreadsheet Modeling)

---

## 📊 VISUAL INSIGHTS & ANALYTICS

### 1. Managerial Dashboard (Web & Excel)
The central command center providing a high-level overview of price trends and signal accuracy. 

![Managerial Dashboard](plots/Excel_Dashboard.png)
*Figure 1: Interactive Financial Dashboard and Data Model.*

> 📂 **Project Asset:** [Download the Interactive Excel Model (.xlsx)](excel/Nifty50_Sentiment_Engine_BusinessANA.xlsx)

---

### 2. Quantitative Intelligence (#Study1)
Statistical analysis of the relationship between "Market Fear" (VIX) and actual index returns using Pearson correlation and linear regression.

| **Analysis Type** | **Key Metric** | **Finding** |
| :--- | :--- | :--- |
| **Correlation** | Pearson’s R | Strong Inverse Relationship |
| **Regression** | P-Value | Statistically Significant Predictors |

<p align="center">
  <img src="plots/Correlation_Heatmap.png" width="45%" />
  <img src="plots/Scatter_Plot.png" width="45%" />
</p>
*Figure 2 & 3: Correlation Matrix and Linear Regression showing the impact of Volatility on Returns.*

---

### 3. Qualitative Text Mining (#Study2)
NLP-based extraction of dominant themes and emotional patterns from 250+ financial headlines to determine the "Market Pulse."

<p align="center">
  <img src="plots/Word_Cloud.png" width="45%" />
  <img src="plots/Sentiment_Patterns.png" width="45%" />
</p>
*Figure 4 & 5: NLP Word Cloud and Emotional Distribution (Trust, Anticipation, and Fear).*

---
## ⚙️ INSTALLATION & SETUP
Clone the repository:

Bash
git clone [https://github.com/YourUsername/Nifty50-Sentiment-Engine.git](https://github.com/YourUsername/Nifty50-Sentiment-Engine.git)
Install R Dependencies:

R
install.packages(c("ggplot2", "corrplot", "tm", "wordcloud", "syuzhet"))
Execute Analysis:
Run the script located in /code/Nifty_Analysis.R.

📈 KEY ANALYTICAL FINDINGS
#FearIndexCorrelation: Confirmed that India VIX is a leading indicator for downside risk; as VIX rises, log returns consistently show negative pressure.

#SentimentLeadLag: Qualitative news sentiment often serves as a leading indicator during high-volatility regimes.

#PCREfficacy: The Put-Call Ratio proved most effective as a trend predictor during "Stable" market regimes.


---

### **Important Reminder:**
For the images to appear on your GitHub:
1.  Create a folder named **`plots`**.
2.  Upload your screenshot of the Vercel/Excel dashboard as **`Excel_Dashboard.png`**.
3.  Upload the R plots as **`Correlation_Heatmap.png`**, **`Scatter_Plot.png`**, **`Word_Cloud.png`**, and **`Sentiment_Patterns.png`**.


## 📂 REPOSITORY STRUCTURE
```text
├── code/
│   └── Nifty_Analysis.R      # Main Engine Script (Cleaning, Merging, Modeling)
├── data/
│   ├── quant_data.csv        # Quantitative model inputs
│   ├── raw_market_data.csv   # Volatility and Price raw data
│   └── qual_data.csv         # News headlines for NLP
├── excel/
│   └── Nifty50_Sentiment_Engine_BusinessANA.xlsx   # Full Data Model
├── plots/
│   ├── Excel_Dashboard.png   # Visual Output Files
│   ├── Word_Cloud.png
│   ├── Scatter_Plot.png
│   └── Correlation_Heatmap.png
└── README.md                 # Documentation

