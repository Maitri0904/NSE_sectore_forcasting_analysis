<h1>📈 Time Series Analysis and Forecasting of NSE Sectoral Indices (2016–2025)</h1>

<p>
This project focuses on the <b>time series analysis and forecasting</b> of National Stock Exchange (NSE)
sectoral indices using statistical techniques. The study analyzes historical data from <b>2016 to 2025</b>
for seven major sectors of the Indian economy and applies the <b>SARIMA (Seasonal ARIMA)</b> model
to identify trends, seasonality, and future price movements.
</p>

<hr>

<h2>📌 Project Information</h2>
<ul>
  <li><b>Course:</b> Time Series and Forecasting (STA501)</li>
  <li><b>Program:</b> B.Sc. Data Science – Semester 5</li>
  <li><b>Academic Year:</b> 2025–26</li>
  <li><b>Data Period:</b> 2016–2025</li>
</ul>

<hr>

<h2>👥 Team Members</h2>
<ul>
  <li>Maitri Chopda </li>
  <li>Man Chaudhary </li>
</ul>

<h2>👩‍🏫 Guided By</h2>
<ul>
  <li>Swapnila Nigam – Assistant Professor (Mathematics)</li>
</ul>

<hr>

<h2>🎯 Project Objective</h2>
<ul>
  <li>Analyze long-term trends in NSE sectoral indices</li>
  <li>Identify seasonal patterns in different sectors</li>
  <li>Forecast future index values using SARIMA</li>
  <li>Support investment and risk-management decisions</li>
</ul>

<hr>

<h2>📊 Sectors Analyzed</h2>
<ul>
  <li>Banking</li>
  <li>Automobile</li>
  <li>Information Technology (IT)</li>
  <li>Metal</li>
  <li>Pharma</li>
  <li>Energy</li>
  <li>Media</li>
</ul>

<hr>

<h2>📚 Data Source</h2>
<p>
The dataset was obtained from the <b>National Stock Exchange of India (NSE)</b>.
It contains daily sectoral index data from <b>2016 to 2025</b>.
</p>

<ul>
  <li><b>Frequency:</b> Daily</li>
  <li><b>Variables:</b> Date, Open, High, Low, Close, Volume, Turnover (₹ Crore)</li>
  <li><b>Reliability:</b> Publicly available and widely used in financial research</li>
</ul>

<hr>

<h2>🧹 Data Preprocessing (Step-by-Step)</h2>

<h3>1️⃣ Data Cleaning</h3>
<ul>
  <li>Removed non-trading days (weekends and holidays)</li>
  <li>Handled missing values using imputation or removal</li>
  <li>Examined and adjusted extreme outliers</li>
</ul>

<h3>2️⃣ Feature Engineering</h3>
<ul>
  <li>Calculated daily returns</li>
  <li>Computed moving averages (7-day, 30-day, 90-day)</li>
  <li>Derived rolling volatility and growth rates</li>
  <li>Normalized sector indices for comparison</li>
</ul>

<h3>3️⃣ Stationarity Testing</h3>
<ul>
  <li>Applied Augmented Dickey-Fuller (ADF) test</li>
  <li>Non-stationary series were differenced</li>
  <li>Ensured constant mean and variance</li>
</ul>

<h3>4️⃣ Time Series Decomposition</h3>
<ul>
  <li>Separated data into trend, seasonal, and residual components</li>
  <li>Identified yearly seasonality in Auto and Banking sectors</li>
</ul>

<hr>

<h2>🧠 Methodology Explained in Detail</h2>

<h3>Why SARIMA?</h3>
<p>
Sectoral indices exhibit both <b>trend</b> and <b>seasonal patterns</b>.
SARIMA effectively captures these characteristics using the model:
<b>SARIMA(p,d,q)(P,D,Q)s</b>.
</p>

<h3>Model Development</h3>
<ul>
  <li>Analyzed ACF and PACF plots for parameter selection</li>
  <li>Optimized models using AIC and BIC values</li>
  <li>Trained models on data from 2016–2023</li>
  <li>Validated forecasts using 2024–2025 data</li>
</ul>

<h3>Performance Metrics</h3>
<ul>
  <li>Mean Absolute Error (MAE)</li>
  <li>Root Mean Square Error (RMSE)</li>
  <li>Akaike Information Criterion (AIC)</li>
</ul>

<hr>

<h2>📈 Trend Analysis Results</h2>

<h3>Linear Regression Trends</h3>
<ul>
  <li>Nifty IT: slope ≈ <b>10.03</b></li>
  <li>Nifty Bank: slope ≈ <b>9.75</b></li>
  <li>Nifty Energy: slope ≈ <b>8.74</b></li>
  <li>Nifty Media: negative trend observed</li>
</ul>

<h3>Exponential Growth Trends</h3>
<ul>
  <li>Nifty IT: ≈ <b>19.1% annual growth</b></li>
  <li>Nifty Energy: ≈ <b>17.4% annual growth</b></li>
  <li>Nifty Metal: ≈ <b>16.6% annual growth</b></li>
  <li>Nifty Media: ≈ <b>−5.0% annual decline</b></li>
</ul>

<hr>

<h2>📆 Seasonal Analysis (Monthly Index)</h2>
<ul>
  <li><b>Auto:</b> Weakest in March–May (≈95.5%), strong recovery after June</li>
  <li><b>IT:</b> Strong Q1 (≈104.7%), weakest in May (≈94.9%)</li>
  <li><b>Energy:</b> Most stable sector (≈100–102%)</li>
  <li><b>Media:</b> Highest volatility (May ≈93.9%, January ≈105%)</li>
  <li><b>Banking:</b> Strong Q1, weakest in May (≈96.7%)</li>
  <li><b>Metal:</b> Peaks in January (≈105%), weakest in Q2</li>
  <li><b>Pharma:</b> Strong August–October (≈103%)</li>
</ul>

<hr>

<h2>🔮 Forecasting Results (SARIMA)</h2>

<h3>Energy & Metal</h3>
<ul>
  <li>Nifty Metal forecast max ≈ <b>12,237</b></li>
  <li>Nifty Energy forecast max ≈ <b>48,629</b></li>
  <li>Both sectors show bullish outlook</li>
</ul>

<h3>Banking & Media</h3>
<ul>
  <li>Nifty Bank forecast max ≈ <b>112,555 by 2029</b></li>
  <li>Nifty Media forecast min ≈ <b>−1,892</b></li>
  <li>Media shows high uncertainty and decline</li>
</ul>

<hr>

<h2>📌 Key Observations</h2>
<ul>
  <li>Energy and Metal are long-term growth sectors</li>
  <li>Banking shows strong cyclical behavior</li>
  <li>IT faces possible slowdown in forecast horizon</li>
  <li>Media sector is highly volatile and risky</li>
</ul>

<hr>

<h2>✅ Conclusion & Suggestions</h2>
<p>
SARIMA proved highly effective in modeling NSE sectoral indices by capturing both trend and seasonality.
Investors are advised to prioritize Energy and Metal sectors for long-term investments,
while exercising caution in IT and Media sectors.
</p>

<hr>

<h2>🚀 Future Scope</h2>
<ul>
  <li>Integration of LSTM and Prophet models</li>
  <li>Inclusion of macroeconomic indicators (GDP, inflation)</li>
  <li>Development of real-time forecasting dashboards</li>
  <li>Extension to global indices (NASDAQ, FTSE, Dow Jones)</li>
</ul>

<hr>

<h2>📚 References</h2>
<ul>
  <li>National Stock Exchange of India (NSE)</li>
  <li>Box & Jenkins – Time Series Analysis</li>
  <li>Hyndman & Athanasopoulos – Forecasting Principles</li>
</ul>
