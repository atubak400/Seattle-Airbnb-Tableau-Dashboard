# Seattle Airbnb Tableau Dashboard Analysis

## Project Overview

This project analyses real-world Airbnb listing data for Seattle using Tableau. The aim is to transform raw listing and calendar data into clear, interactive insights that highlight pricing patterns, geographic distribution, property characteristics, and seasonal revenue trends.

The project demonstrates end-to-end data analyst skills, including data cleaning, data modelling, exploratory analysis, and interactive dashboard design using Tableau.

---

## Business Objective

The objective of this project is to provide an interactive dashboard that helps stakeholders:

- Understand average Airbnb pricing across different Seattle zip codes
- Identify geographic areas with higher or lower rental prices
- Analyse how pricing varies by number of bedrooms
- Explore seasonal trends in Airbnb revenue over time
- Assess listing density and competition across property sizes

The dashboard supports data-driven decision-making for potential property investors and hosts by presenting Airbnb market data in a clear and accessible format.

---

## Dataset Description

The dataset is a real-world Seattle Airbnb dataset containing listing and calendar information. The data was provided in Excel format and consists of multiple related sheets.

**Data source:** Seattle Airbnb Open Data (shared via Kaggle and GitHub)  
**Format:** Excel (`.xlsx`)

**Granularity:**
- Listings: One row per Airbnb property
- Calendar: One row per listing per date

---

## Data Cleaning and Preparation

The dataset required minimal traditional data cleaning, as it originates from a structured and curated open-data source. Instead, data cleaning in this project focused on analytical decisions, filtering, and data modelling choices made within Tableau to ensure accuracy, performance, and clarity.

Key data cleaning and preparation steps included:

- Reviewing all available fields and selecting only those relevant to the analysis, such as price, zip code, bedrooms, and date.
- Excluding records with **null zip codes** to ensure geographic analyses only included valid and interpretable locations.
- Using **average price (AVG)** rather than total price (SUM) to avoid misleading aggregations when comparing pricing across locations.
- Removing the **Reviews** table from the data model to prevent unnecessary row expansion and performance issues, as review data was not required for the planned analyses.
- Ensuring correct join logic between the Listings and Calendar tables by matching **Listings.id** to **Calendar.listing_id**.
- Avoiding premature date filtering, allowing time-based filters to be applied only when required for seasonal and revenue trend analysis.

These steps ensured the dataset remained clean, performant, and analytically sound while preserving the integrity of the original data.

---

## Data Modelling

The dataset was imported directly into Tableau Public Desktop from Excel. Tableau automatically detected the Listings and Calendar sheets and displayed them in the data source panel.

![Tableau Overview](tableau/screenshots/1.png)
![Tableau Overview](tableau/screenshots/2.png)

The **Listings** table was selected as the primary table, as it contains the core property-level information required for pricing, geographic, and bedroom-based analysis. The Calendar table was joined to the Listings table to support time-based pricing and revenue analysis.

Key modelling steps included:

- Identifying **Listings** as the central table for analysis.
- Joining **Listings.id** to **Calendar.listing_id** using an inner join.
- Verifying join relationships and reviewing row counts to confirm correct data linkage.

This data model enables analysis across location, pricing, property size, and time, while remaining simple and performant for Tableau Public.

---

## Visualisation and Dashboard Design

The dashboard was designed to guide users from high-level geographic insights to more detailed pricing and seasonal trends. Each visualisation was deliberately selected based on the type of question being answered and the structure of the underlying data.

A clear and minimal design approach was applied throughout to ensure the dashboard remains accessible to non-technical users while still supporting analytical exploration.

Key visual components include:

- A **bar chart** showing average price by zip code, enabling comparison of Airbnb pricing across different areas of Seattle.
![Tableau Overview](tableau/screenshots/3.png)
- A **map visualisation** displaying zip codes colour-coded by average price to highlight geographic pricing patterns.
![Tableau Overview](tableau/screenshots/4.png)
- A **time series line chart** showing total revenue over time, allowing identification of seasonal trends in Airbnb bookings.
![Tableau Overview](tableau/screenshots/5.png)
- A **bar chart** comparing average price by number of bedrooms, demonstrating how property size impacts pricing.
- A **bar chart** showing the count of listings by number of bedrooms, helping assess competition levels across property sizes.

Consistent colour usage and logical layout were applied to improve readability and interpretation.
Detailed visual-level design decisions, field selections, and insights are documented in notes/visualisation_design.md.
---

## Dashboard Overview

The Tableau dashboard is fully interactive and designed to support exploratory analysis. Users can interact with charts and filters to explore how location, property size, and seasonality influence Airbnb pricing and revenue.

### Main Dashboard

![Dashboard Overview](images/dashboard_overview.png)

---

## Key Insights

- Average Airbnb prices vary significantly across Seattle zip codes, with some areas commanding notably higher nightly rates.
- Higher-priced zip codes tend to cluster geographically, reinforcing the importance of location in short-term rental pricing.
- Airbnb prices generally increase with the number of bedrooms, while listing availability decreases for larger properties.
- Revenue patterns display clear seasonality, with higher earnings during peak travel periods.
- Smaller properties face greater competition due to higher listing volumes compared to larger homes.

These insights demonstrate how raw Airbnb data can be transformed into actionable market intelligence.

---

## Tools and Technologies Used

- Tableau Public
- Microsoft Excel

---

## How to Use the Dashboard

- Interact with charts to highlight specific zip codes or bedroom categories
- Compare pricing patterns across locations and property sizes
- Review time series trends to identify seasonal behaviour

---

## Future Improvements

- Introduce additional filters for neighbourhood and property type
- Enhance dashboard interactivity using parameters and dashboard actions
- Update the dataset to include more recent Airbnb data
- Incorporate additional metrics such as occupancy rate or availability trends

---

## Author

**Kingsley Atuba**  
Data Analyst | Tableau | Power BI | SQL | Excel

# Seattle-Airbnb-Tableau-Dashboard
