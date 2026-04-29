#  Netflix Data Analysis — MySQL Project

> A hands-on SQL project analyzing Netflix's content library using MySQL Workbench — covering beginner to advanced-level queries, window functions, and real-world business case questions.

---

## Project Overview

This project explores a cleaned Netflix dataset to answer **75+ SQL questions** across three levels — Beginner, Intermediate, and Advanced. The goal is to practice real-world SQL skills while extracting meaningful insights about Netflix's content strategy.

---

##  Dataset

- **Source:** Netflix Titles Dataset (Kaggle)
- **File:** `netflix_cleaned.csv`
- **Key Columns:** `title`, `type`, `director`, `cast`, `country`, `date_added`, `release_year`, `rating`, `duration`, `listed_in`, `description`

---

##  Tools Used

| Tool | Purpose |
|------|---------|
| MySQL Workbench | Query writing & execution |
| MySQL 8.0 | Database engine |
| CSV Dataset | Netflix titles data |

---

##  Questions Solved

###  Beginner Level (Questions 1–20)
Basic filtering, sorting, and aggregation.

| # | Question | Concepts Used |
|---|----------|--------------|
| 1 | Count total number of shows on Netflix | `COUNT` |
| 2 | Count Movies vs TV Shows | `GROUP BY` |
| 3 | Show all movies released after 2015 | `WHERE`, filtering |
| 4 | Find all TV Shows with rating 'TV-MA' | `WHERE` |
| 5 | List top 10 latest added shows | `ORDER BY`, `LIMIT`, `DENSE_RANK` |
| 6 | Find all shows from India | `WHERE` |
| 7 | Get all content released in 2020 | `WHERE` |
| 8 | Find movies with duration > 120 minutes | `WHERE` |
| 9 | Top 5 oldest movies on Netflix | `ORDER BY`, `LIMIT` |
| 10 | Latest 10 TV Shows added | `ORDER BY`, `LIMIT` |
| 11 | Sort movies by duration (longest first) | `ORDER BY DESC` |
| 12 | Sort shows by release year (descending) | `ORDER BY DESC` |
| 13 | Count number of shows per rating | `GROUP BY`, `COUNT` |
| 14 | Count number of shows per country | `GROUP BY`, `COUNT` |
| 15 | Average movie duration | `AVG` |
| 16 | Count shows added each year | `YEAR()`, `GROUP BY` |
| 17 | Find maximum movie duration | `MAX` |
| 18 | Which country produces the most content? | `GROUP BY`, `ORDER BY` |
| 19 | Count Movies vs TV Shows per country | `CASE`, `SUM`, `GROUP BY` |
| 20 | Top 5 directors with most content | `GROUP BY`, `DENSE_RANK`, `CTE` |

### 🔄 Intermediate Level (Questions 21–42)
*In Progress — Group By insights, string operations, date handling, conditional logic.*

### 🚀 Advanced Level (Questions 43–75)
*Upcoming — Window functions, subqueries, complex business case questions.*

---

##  Key Insights Found So Far

-  Netflix has significantly more **Movies** than TV Shows in its library
-  **United States** produces the most Netflix content, followed by India
-  The **top directors** by content volume show a clear concentration in a few prolific creators
-  Content additions peaked in **2019–2020**, reflecting Netflix's global expansion phase
-  Average movie duration on Netflix is approximately **90–100 minutes**

---

##  Project Structure

```
netflix-analysis-mysql/
│
├── netflix_cleaned.csv        # Cleaned dataset
├── netflix_script.sql         # All SQL queries (organized by level)
├── README.md                  # Project documentation
└── screenshots/               # Query output screenshots (coming soon)
```

---

##  SQL Concepts Practiced

- `WHERE`, `GROUP BY`, `ORDER BY`, `LIMIT`
- Aggregate functions: `COUNT`, `AVG`, `MAX`, `SUM`
- `CASE WHEN` conditional logic
- Date functions: `YEAR()`, `MONTH()`
- String operations: `LIKE`
- Window functions: `DENSE_RANK() OVER()`
- CTEs: `WITH ... AS (...)`
- Subqueries

---

##  Roadmap

- [x] Beginner Level (Q1–Q20)
- [ ] Intermediate Level (Q21–Q42)
- [ ] Advanced Level (Q43–Q75)
- [ ] Add screenshots of query outputs
- [ ] Build a dashboard in Power BI / Tableau (optional)

---

##  About

This project is part of my SQL learning journey. I'm solving 75+ real-world-style questions on a Netflix dataset to build strong data analysis skills using MySQL.

Feel free to fork this repo, try the queries yourself, or suggest improvements!

---


