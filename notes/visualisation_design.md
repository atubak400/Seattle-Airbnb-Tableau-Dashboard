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
