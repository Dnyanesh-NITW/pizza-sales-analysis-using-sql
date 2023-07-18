# pizza-sales-analysis-using-sql

# Pizza Sales Data Analysis

This project focuses on the analysis of pizza sales data to gain insights into customer preferences, revenue generation, and order patterns. The dataset used in this analysis contains information about pizza sales during the year 2015. By examining the data, my aim is to uncover valuable insights that can help inform business decisions and optimize the pizza shop's operations.

## Introduction

Understanding customer preferences and market trends is crucial for businesses to thrive in a competitive environment. The pizza industry is no exception, with customers having a wide range of choices and preferences when it comes to pizza flavors, sizes, and categories. Analyzing sales data allows us to gain a deeper understanding of customer behavior, identify popular pizza choices, and recognize patterns in customer orders.

The main objectives of this analysis are as follows:
- Examine customer preferences in terms of pizza size, category, and specific ingredients.
- Analyze revenue generation and identify the highest revenue-generating categories and pizzas.
- Investigate order patterns, such as peak order times, popular days, and average order quantities.
- Uncover any notable trends or patterns in customer behavior and preferences.

## Data Analysis Process

In this project, I have followed a systematic approach to analyze the pizza sales data and derive meaningful insights. The analysis process involved the following steps:

1. Data Collection: The pizza sales data used in this analysis is collected from Kaggle which is the Data Science
community. The link to the dataset is given below:
https://www.kaggle.com/datasets/shilongzhuang/pizza-sales

2. Dataset Description: This pizza sales dataset make up 12 relevant features.
- pizza_id: The unique identifier for each pizza in the dataset.
- order_id: The unique identifier for each pizza order.
- pizza_name_id: The identifier for each specific pizza name.
- quantity: The number of pizzas ordered in each transaction.
- order_date: The date when the pizza order was placed.
- order_time: The time at which the pizza order was placed.
- unit_price: The price of a single unit of pizza.
- total_price: The total price of the pizza order, calculated as the unit price multiplied by the
quantity.
- pizza_size: The size or dimensions of the pizza. (S,M,L,XL,XXL)
- pizza_category: The category or classification of the pizza, indicating its type or style.
(Classic, Veggie, Supreme, Chicken)
- pizza_ingredients: The list of ingredients used in the pizza preparation.
- pizza_name: The name or label assigned to each specific pizza.

3. Data Preprocessing: I performed data cleaning and transformation to ensure the dataset's quality and suitability for analysis. This included handling missing values, removing duplicates, and formatting data types.

4. Normalization: The normalization process aims to organize the dataset into multiple tables, minimize redundancy,
and establish relationships between entities. Dataset is divided into three tables. pizza table, orders table, OrdersPizza table

2. SQL Queries: We utilized SQL queries to extract relevant information from the dataset. This involved querying the database to obtain insights into customer preferences, revenue generation, and order patterns.

3. Statistical Analysis: We applied various statistical techniques to uncover patterns and trends in the data. This included calculating summary statistics, identifying peak order times, and examining seasonal variations in sales.

## Insights

Based on the analysis conducted, I have gained several valuable insights into the pizza sales data. Here are the key insights we obtained:

1. Lunchtime Rush: The most bustling period for the pizza shop is between 12 PM and 2 PM,
indicating a significant influx of customers during lunch hours. This can be attributed to
people taking their lunch breaks from work or school and seeking a quick and convenient
meal option.

2. Sunday as the Least Busy Weekday: Sundays exhibit lower customer activity compared to
other weekdays, suggesting that the shop's main customer base consists primarily of
working individuals.

3. Seasonal Sales Patterns: Spring season experiences higher sales compared to other
seasons, while sales during the fall season are relatively lower. T

4. Preference for Large Size: The most preferred pizza size by customers is large. This
indicates a tendency for customers to order pizzas in groups, potentially for sharing among
family, friends, or colleagues.

5. Single Category for Each Pizza: Each pizza is classified into only one category out of the
four available. 

6. Chicken Toppings Preference: The Thai Chicken Pizza and
the Big Meat Pizza, featuring the popular chicken topping, have emerged as top sellers, showcasing
the importance of incorporating well-balanced flavor profiles that include chicken.

7. Classic Category Dominance: The Classic category emerges as the most ordered, highest
revenue-generating, and most available pizza category. This popularity could be due to the
timeless appeal and widespread recognition of classic pizza flavors, making them a go-to
choice for customers.

8. Average Pizza Per Order: With an average of 2.32 pizzas per order, it is evident that
customers usually come in groups when ordering. This suggests that the pizza shop attracts
customers looking to share a meal or cater to gatherings or social events.

**For more such insights, please view my Pizza Analysis Detailed Report in this repostitory**
