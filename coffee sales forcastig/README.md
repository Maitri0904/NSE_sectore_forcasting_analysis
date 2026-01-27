<h1 align="center">☕ Coffee Sales Forecasting & Trend Analysis</h1>

<p align="center">
A complete data analysis and time-series forecasting project based on coffee vending machine sales.
</p>

<hr>

<h2>📌 Project Background</h2>
<p>
The coffee vending machine industry generates daily transactional data that contains valuable insights about 
customer behavior, product demand, and sales performance. However, without proper analysis, this data cannot 
support smart business decisions.
</p>

<p>
This project analyzes an open coffee sales dataset collected from a vending machine between 
<b>March 2024 and July 2024</b>. Using Exploratory Data Analysis (EDA) and Time-Series Forecasting, 
raw sales data is transformed into meaningful business insights and future sales predictions.
</p>

<hr>

<h2>❗ Problem Statement</h2>
<p>
The vending machine operator has continuous sales data but lacks insights to answer key business questions.
Without structured analysis, it is difficult to:
</p>

<ul>
  <li>Identify peak and low sales periods</li>
  <li>Understand which coffee products generate the most revenue</li>
  <li>Track repeat customer behavior</li>
  <li>Predict future sales for inventory planning</li>
</ul>

<p>
This project solves these problems using historical data analysis and forecasting models.
</p>

<hr>

<h2>🎯 Project Objectives</h2>
<ul>
  <li>Perform Time-Series Exploratory Data Analysis (EDA)</li>
  <li>Identify sales trends, seasonality, and patterns</li>
  <li>Analyze product-wise performance and customer preferences</li>
  <li>Study repeat customer behavior using card transactions</li>
  <li>Forecast next day, next week, and next month sales</li>
</ul>

<hr>

<h2>📊 Dataset Summary</h2>
<ul>
  <li><b>Total Transactions:</b> 1,133</li>
  <li><b>Time Period:</b> March 2024 – July 2024</li>
  <li><b>Total Columns:</b> 6</li>
  <li><b>Missing Values:</b> None (clean dataset)</li>
</ul>

<h3>💰 Price Insights</h3>
<ul>
  <li>Average Price ≈ ₹33</li>
  <li>Minimum Price ≈ ₹18</li>
  <li>Maximum Price ≈ ₹40</li>
  <li>Stable and realistic pricing across products</li>
</ul>

<h3>☕ Top Selling Products</h3>
<p>
Milk-based beverages such as <b>Latte, Americano with Milk, and Cappuccino</b> generate the highest revenue.
</p>

<h3>💳 Payment Behavior</h3>
<p>
Card payments dominate over cash transactions, allowing tracking of repeat customer behavior.
</p>

<hr>

<h2>🔍 Exploratory Data Analysis (EDA)</h2>

<h3>📈 Daily Sales Trend</h3>
<p>
Sales fluctuate daily with frequent peaks and drops. Demand is active but unstable, meaning forecasting models 
are required to smooth patterns and predict future sales.
</p>

<h3>⏰ Peak Sales Hours</h3>
<ul>
  <li>Highest sales occur during <b>evening hours</b></li>
  <li><b>6:00 PM</b> is the strongest peak hour</li>
  <li>Other busy hours: 3 PM, 7 PM, 8 PM, 9 PM, 11 PM</li>
</ul>

<h3>🔥 Hourly Heatmap Insight</h3>
<p>
Evenings consistently show high activity across weekdays and weekends, while early mornings and late nights show low demand.
</p>

<h3>👥 Repeat Customer Behavior</h3>
<p>
Card-based analysis shows strong customer loyalty. Some customers made more than 50–80 purchases, indicating 
regular use of the vending machine.
</p>

<h3>📅 Monthly Sales Distribution</h3>
<ul>
  <li>May recorded the highest sales (~24%)</li>
  <li>June followed (~21%)</li>
  <li>Other months remained stable (~18–19%)</li>
</ul>

<h3>📉 Weekly Trend</h3>
<p>
Sales increase mid-period, decline slightly, then recover — showing cyclical demand rather than permanent drops.
</p>

<hr>

<h2>🧹 Data Cleaning Using SQL</h2>
Key cleaning steps performed:
<ul>
  <li>Checked total records and column data types</li>
  <li>Renamed columns to professional names</li>
  <li>Handled NULL values in card_id for cash payments</li>
  <li>Checked for duplicate transactions</li>
  <li>Validated date formats and removed invalid dates</li>
  <li>Ensured product names were consistent</li>
  <li>Verified prices were realistic and positive</li>
</ul>

<hr>

<h2>📦 Time-Series Decomposition</h2>

<ul>
  <li><b>Trend:</b> Shows long-term rise, fall, and recovery in demand</li>
  <li><b>Seasonality:</b> Strong weekly repeating pattern</li>
  <li><b>Residual:</b> Random noise after removing trend and seasonality</li>
</ul>

<hr>

<h2>🤖 Sales Forecasting Using SARIMA</h2>

<h3>Steps Performed:</h3>
<ol>
  <li>Visualized daily sales data</li>
  <li>Tested stationarity using ADF Test</li>
  <li>Applied differencing to make series stationary</li>
  <li>Identified SARIMA parameters using ACF & PACF plots</li>
  <li>Built SARIMA model</li>
  <li>Forecasted next 14 days of sales</li>
</ol>

<p>
The SARIMA model successfully captures trend and weekly seasonality, providing reliable short-term forecasts.
</p>

<hr>

<h2>💡 Business Recommendations</h2>
<ul>
  <li>Stock more products before <b>evening peak hours</b></li>
  <li>Prioritize <b>milk-based coffee</b> in inventory and promotions</li>
  <li>Introduce <b>loyalty rewards</b> for repeat customers</li>
  <li>Use weekly demand patterns for smarter stock planning</li>
  <li>Use forecasting models for short-term inventory decisions</li>
</ul>

<hr>

<h2>🛠 Tools & Technologies Used</h2>
<ul>
  <li>Python (Pandas, Matplotlib, Statsmodels)</li>
  <li>SQL Server (Data Cleaning)</li>
  <li>Time-Series Forecasting (SARIMA)</li>
</ul>

<hr>

<h2 align="center">📈 Project Outcome</h2>
<p align="center">
This project converts raw vending machine data into business intelligence, helping improve inventory planning, 
product strategy, and future sales forecasting.
</p>
