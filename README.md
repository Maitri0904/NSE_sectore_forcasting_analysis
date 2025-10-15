Overview
This project analyzes trends and forecasts growth in various sectors to identify which ones are likely to grow in the upcoming years. We studied 7 key sectors: Auto, Bank, IT, Pharma, Media, Metal, and Energy. The analysis involves trend detection using moving averages and forecasting with the SARIMA (Seasonal Autoregressive Integrated Moving Average) model.
Key findings:

Growing Sectors: Energy and Bank sectors show positive growth trends.
Falling Sector: Media sector is experiencing a decline.

This repository contains the code, data, and results for the analysis, enabling users to replicate or extend the study.
Methodology

Data Collection: Historical data for each sector (e.g., stock indices, economic indicators) was gathered from reliable sources.
Trend Analysis:

Applied moving averages (simple and exponential) to smooth data and identify underlying trends.


Forecasting:

Used SARIMA model for time-series forecasting, accounting for seasonality, trends, and autocorrelations.
Model parameters were tuned based on AIC/BIC criteria and validated with metrics like MAE, RMSE.


Evaluation: Compared forecasts with recent data to assess accuracy and draw conclusions on sector performance.

Key Results

Energy Sector: Strong upward trajectory, driven by renewable energy shifts and global demand.
Bank Sector: Steady growth due to economic recovery and interest rate dynamics.
Media Sector: Declining trend, possibly influenced by digital disruptions and changing consumer behaviors.
Other sectors (Auto, IT, Pharma, Metal) show mixed or stable trends without clear dominance in growth or decline. 
