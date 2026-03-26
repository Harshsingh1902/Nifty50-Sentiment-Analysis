# 📈 Nifty 50 Sentiment Engine: Multi-Factor Financial Analytics

A professional-grade financial analytics framework designed to bridge the gap between **Quantitative Market Indicators** and **Qualitative Market Narratives**. This engine replicates a sophisticated research model to analyze the Nifty 50 index using R-based statistical modeling and Natural Language Processing (NLP).

---

## 🚀 Project Overview
The **Nifty 50 Sentiment Engine** evaluates 250 trading days of data to identify predictive patterns in the Indian Stock Market. It focuses on three core pillars:
1. **Volatility Regimes:** Analyzing the India VIX to categorize market risk.
2. **Derivative Positioning:** Modeling the Put-Call Ratio (PCR) to gauge investor sentiment.
3. **News Analytics:** Using NLP to extract emotional triggers from financial headlines.

---

## 🛠️ Technical Stack
* **Language:** `R (v4.0+)`
* **Data Visualization:** `ggplot2`, `corrplot`
* **Text Mining:** `tm`, `wordcloud`
* **Sentiment Engine:** `syuzhet` (NRC Emotion Lexicon)
* **Storage:** Integrated CSV Relational Data

---

## 📊 Visual Insights & Analytics

### 1. Managerial Dashboard (Excel Integrated)


---

### 2. Quantitative Intelligence (Study 1)
Statistical analysis of the relationship between "Market Fear" (VIX) and actual index returns.

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

### 3. Qualitative Text Mining (Study 2)
NLP-based extraction of dominant themes and emotional patterns from 250+ news headlines.

<p align="center">
  <img src="plots/Word_Cloud.png" width="45%" />
  <img src="plots/Sentiment_Patterns.png" width="45%" />
</p>
*Figure 4 & 5: NLP Word Cloud and Emotional Distribution (Trust, Anticipation, and Fear).*

---

## 📂 Repository Structure
* **`code/`**: Contains `Nifty_Analysis.R` (The main engine script).
* **`data/`**: Relational CSV files (`quant_data`, `raw_market_data`, `qual_data`).
* **`plots/`**: High-resolution PNG exports of all analytical charts.
* **`README.md`**: Project documentation and methodology.

---

## ⚙️ Installation & Setup
1. **Clone the repository:**
   `git clone https://github.com/YourUsername/Nifty50-Sentiment-Engine.git`
2. **Install R Dependencies:**
   `install.packages(c("ggplot2", "corrplot", "tm", "wordcloud", "syuzhet"))`
3. **Execute Analysis:**
   Run the script located in `/code/Nifty_Analysis.R`.

---

## 📈 Key Analytical Findings
* **Fear-Index Correlation:** Confirmed that India VIX is a leading indicator for downside risk in Nifty 50.
* **Sentiment Lead-Lag:** Qualitative news sentiment often leads price action by 24 hours during high-volatility regimes.
* **PCR Accuracy:** The Put-Call Ratio proved most effective during "Stable" market regimes.
