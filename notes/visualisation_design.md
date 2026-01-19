# Dashboard Visualisation Design

This document outlines the design decisions and analytical reasoning behind the visualisations created for the Seattle Airbnb Tableau dashboard. Each visual was deliberately chosen to answer specific analytical questions, support clear interpretation of Airbnb pricing data, and communicate insights effectively to a non-technical audience.

---

## 1. Average Price by Zip Code (Bar Chart)
![Tableau Overview](tableau/screenshots/3.png)
### Purpose
To compare average Airbnb prices across different Seattle zip codes and identify areas with higher or lower typical nightly rates.

### Fields Used
- Zipcode (Listings)
- Average of Price (Listings)

### Why This Visual Was Chosen
A bar chart was chosen because it allows clear, direct comparison across categorical geographic units such as zip codes. This format makes it easy to rank locations by average price and quickly identify the most and least expensive areas. Using average price rather than total price ensures comparisons are not distorted by differing numbers of listings per zip code.

Multiple colours were initially applied to distinguish zip codes clearly and improve visual separation between bars. This approach supports early-stage exploration and helps users quickly differentiate individual categories before additional visuals, such as maps, are introduced.

### Insight Provided
This visual shows that average Airbnb prices vary significantly across Seattle zip codes. Certain zip codes consistently command higher average nightly rates, indicating premium locations, while others cluster at lower price points. These differences highlight the importance of location in Airbnb pricing and provide an initial indication of where potential hosts or investors may achieve higher returns.

This chart establishes a foundational pricing comparison that informs subsequent geographic and property-level analyses across the dashboard.

## 2. Average Price by Zip Code (Map)
![Tableau Overview](tableau/screenshots/4.png)
### Purpose
To visualise the geographic distribution of average Airbnb prices across Seattle and identify spatial patterns in pricing that may not be immediately obvious in a bar chart.

### Fields Used
- Zipcode (Listings)
- Average of Price (Listings)
- Latitude (generated)
- Longitude (generated)

### Why This Visual Was Chosen
A filled map was chosen to complement the bar chart by adding geographic context to the pricing data. While the bar chart ranks zip codes by average price, the map allows users to see *where* those prices are located spatially across the city.

Using Tableau’s generated latitude and longitude fields enables accurate geographic plotting without requiring manual coordinate data. Colour encoding is applied to represent average price, allowing users to quickly distinguish higher-priced and lower-priced areas through visual intensity rather than numeric comparison alone.

This visual is particularly effective for non-technical users, as spatial relationships are often easier to interpret on a map than in tabular or ranked formats.

### Insight Provided
The map reveals clear geographic clustering of Airbnb prices across Seattle. Higher average prices tend to concentrate in specific central and waterfront zip codes, while lower prices appear more frequently in outer or less central areas.

This spatial pattern reinforces the strong influence of location on Airbnb pricing and provides actionable insight for potential hosts or investors when evaluating where to focus property acquisition or pricing strategies. The map also validates trends observed in the bar chart by showing that high- and low-priced zip codes are not randomly distributed, but geographically structured.

## 3. Revenue Over Time (Weekly Line Chart)
![Tableau Overview](tableau/screenshots/5.png)
### Purpose
To analyse how Airbnb revenue changes over time across the year and identify seasonal patterns in booking activity and earnings.

### Fields Used
- Date (Calendar)
- Week of Date (Calendar)
- Sum of Price (Calendar)

### Why This Visual Was Chosen
A line chart is well suited for time-series analysis because it clearly shows trends, fluctuations, and overall movement over time. Aggregating the data at a weekly level reduces daily noise while still preserving meaningful seasonal variation across the year.

Using **Calendar.price** rather than Listings.price ensures that the visual reflects actual realised nightly pricing across dates, making it appropriate for revenue analysis rather than base price comparison. The weekly time granularity also supports easier interpretation for non-technical users, who may find daily trends overly detailed.

This visual helps bridge the gap between static pricing analysis and dynamic performance over time.

### Insight Provided
The chart shows that Airbnb revenue exhibits clear seasonality throughout the year. Revenue increases steadily from early January into late spring, peaks during the summer months, and then gradually declines towards the end of the year, with a slight recovery during the holiday period.

This pattern suggests higher demand during warmer months and peak travel seasons, reinforcing the importance of timing and seasonality when evaluating Airbnb earning potential. The visual provides valuable insight for hosts planning availability, pricing strategies, or personal use of their property across the year.

## 4. Average Price by Number of Bedrooms (Bar Chart)
![Tableau Overview](tableau/screenshots/6.png)
### Purpose
To analyse how Airbnb pricing varies based on property size and determine how the number of bedrooms influences average nightly rates.

### Fields Used
- Bedrooms (Listings)
- Average of Price (Listings)

### Why This Visual Was Chosen
A bar chart is an effective way to compare average prices across discrete, ordered categories such as the number of bedrooms. This format allows users to clearly see how pricing changes as property size increases, while maintaining a simple and intuitive layout.

Using **average price** ensures that comparisons reflect typical pricing behaviour rather than being skewed by the number of listings within each bedroom category. The bars are ordered logically by bedroom count, reinforcing the natural progression from smaller to larger properties.

A single, consistent colour was applied to reduce visual clutter and keep the focus on the relationship between bedroom count and price rather than on category differentiation.

### Insight Provided
The visual shows a clear positive relationship between the number of bedrooms and average Airbnb price. Smaller properties with one or two bedrooms have substantially lower average prices, while larger properties command significantly higher nightly rates.

This trend highlights how property size is a major driver of Airbnb pricing and provides valuable insight for potential hosts or investors evaluating whether larger properties justify higher acquisition or operating costs based on expected returns.

## 5. Count of Listings by Number of Bedrooms (Table)
![Tableau Overview](tableau/screenshots/7.png)
### Purpose
To quantify the number of Airbnb listings available for each bedroom category and assess the level of competition across different property sizes.

### Fields Used
- Bedrooms (Listings)
- Distinct Count of Listing ID (Listings)

### Why This Visual Was Chosen
A simple table was chosen because the primary goal of this visual is to communicate exact counts rather than trends or comparisons based on magnitude. Tables are well suited for presenting precise numerical values, especially when the number of categories is small and the information needs to be easily readable.

Using a **distinct count of Listing ID** ensures that each property is counted only once, avoiding duplication and providing an accurate representation of listing availability by bedroom count. The table format also pairs naturally with the previous bar chart showing average price by bedroom, allowing users to compare pricing potential against competition levels.

### Insight Provided
The visual shows that one-bedroom listings dominate the Seattle Airbnb market, with a significantly higher number of properties compared to larger homes. As the number of bedrooms increases, the count of available listings drops sharply.

This indicates that while larger properties tend to command higher average prices, they face substantially less competition. This insight is valuable for hosts or investors weighing the trade-off between higher pricing potential and market saturation when selecting property sizes.

---

## Dashboard-Level Design Considerations
![Tableau Overview](tableau/screenshots/8.png)
- Consistent colour usage was applied to improve visual cohesion.
- Visuals were arranged to guide users from pricing context to revenue trends and supply distribution.
- Unnecessary visual clutter was avoided to maintain clarity and readability.

---

## Summary

The dashboard combines geographic, temporal, and categorical analysis to provide a clear picture of the Seattle Airbnb market. By linking pricing, location, time, and property size, the visualisations work together to tell a coherent and accessible analytical story.