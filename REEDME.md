# Analyzing Tunisia’s Real Estate Market: A Data-Driven SQL Approach

> A deep exploration of Tunisia’s real estate landscape using MS SQL—revealing hidden patterns, growth opportunities, and strategic insights from transactional data.

---

## Introduction

Real estate is more than just bricks and mortar—it’s a reflection of economic vitality, regional development, and shifting human needs. In Tunisia, the property market plays a key role in both urban expansion and investment strategy.

But what truly drives value in this market? Where are buyers most active, and which types of properties dominate the landscape?

To answer these questions, we conducted an **exploratory data analysis (EDA)** using **MS SQL** on a comprehensive Tunisian real estate dataset. From transaction records to pricing and surface area metrics, the analysis uncovers patterns in sales performance, regional revenue contributions, and property preferences.

Through meticulous data cleaning, transformation, and SQL-powered querying, we extracted meaningful trends that shed light on Tunisia’s evolving real estate dynamics.

---

## Data Cleaning and Transformation

To ensure the dataset was accurate and analysis-ready, the following steps were implemented using **MS SQL**:

1. **Mirror Table Creation**  
   Created a backup (`Tunisa_real_estate_uncleaned`) to preserve original data integrity.

2. **Data Import**  
   Loaded all records from the primary dataset: `practice.dbo.[tunisia-real-estate]`.

3. **Null Value Checks**  
   Identified missing values in key fields like `Surface` and `Price`.

4. **Data Type Standardization**  
   Converted `Price` from `INT` to `DECIMAL(18,2)` for financial precision.

5. **Derived Metrics**  
   Calculated total revenue, average revenue per transaction, and transaction volume.

6. **Consistency Checks**  
   Standardized values in categorical fields such as `Governorate`, `Nature`, and `Type_of_Real_Estate`.

---

## Key Insights

-  **Total revenue** reached an impressive **TND 21.38 billion**.
-  **Nabeul** leads all governorates with **6.76B TND**, followed by **Tunis (5.54B)** and **Ariana (3.52B)**.
-  **Hammamet** alone generated over **4B TND**, making it Tunisia's top-performing delegation.
-  **Houses** are the most transacted property type (**10,990 transactions**, **8.2B TND**), followed by **vacant land** (**5.55B TND**) and **agricultural land** (**1.32B TND**).
-  Land-based sales reflect the economy's continued **agricultural and developmental orientation**.
-  High-value real estate activity is concentrated in select delegations such as **La Marsa**, **Ariana Ville**, and **La Soukra**.
-  **Sales drive 90%+ of revenue** even in rental-heavy zones—confirming that ownership is the primary market force.
-  From 2018 to 2023, the market experienced **rapid growth**, culminating in **44,994 transactions and 18.8B TND** in 2023 alone—a potential result of digitization, policy changes, or economic recovery.

---

## Recommendations

To build on this momentum and address market gaps, the following strategies are proposed:

1. **Strengthen Infrastructure in High-Growth Zones**  
   Invest in urban planning and transport to support rapid development in Hammamet, La Marsa, and Ariana Ville.

2. **Promote Strategic Land Development**  
   Leverage vacant and agricultural land through mixed-use projects, agri-tech, and sustainable tourism.

3. **Stimulate Commercial Property Activity**  
   Address underdeveloped commercial segments by encouraging office and business property investments with zoning flexibility and tax incentives.

4. **Unlock Dormant Markets**  
   Target low-activity delegations with digital listing platforms, investment incentives, and awareness campaigns.

5. **Institutionalize Data-Driven Policy**  
   Implement continuous market monitoring and publish dashboards to guide policymakers and investors.

---

## Conclusion

This SQL-powered analysis of Tunisia’s real estate sector reveals a market on the rise—centered around urban hubs like Nabeul and Tunis, with growing attention on land-driven investments. The remarkable jump in activity during 2023 marks a transformative moment for the industry, driven by innovation, economic shifts, or regulatory support.

However, regional disparities and a lagging commercial segment suggest the need for **inclusive planning and diversified strategies**. With data-driven governance and targeted development, Tunisia’s real estate market holds vast potential for economic transformation, regional equity, and sustainable growth.

---




