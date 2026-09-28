[![SQL](https://img.shields.io/badge/SQL-SQLite-003B57?logo=sqlite&logoColor=white)](https://www.sqlite.org/)

# Olympics SQL Analytics

A SQLite exercise querying an Olympics database — athletes, events, registrations,
and medals — from an intro "computers and society" course's one hands-on SQL
assignment among an otherwise writing-heavy syllabus (cryptography, sorting,
compression, graph theory).

| File | What it is |
|---|---|
| [`a6_olympics_queries.sql`](a6_olympics_queries.sql) | My completed assignment — SQL queries answering the assignment questions (athlete rosters by age/country, registration dates, and further aggregate queries) against the schema below. |
| [`olympics.sql`](olympics.sql) | Course-provided schema/seed script (not my work — included because the queries depend on it): creates and populates `athletes`, `events`, `registration`, and `medals`. |

## Running

```bash
sqlite3 olympics.db < olympics.sql
sqlite3 olympics.db < a6_olympics_queries.sql
```

## 🎓 Project Context

Built as part of **CSC 106: Fundamentals of Computer Science II (Computers and
Society)** at the University of Victoria (Spring 2024).

## ⚠️ Academic Integrity Notice

This repository is maintained for portfolio and educational purposes only. If you are
currently enrolled in CSC 106 at the University of Victoria or a similar course,
please note that using this code in your own assignments may constitute a violation
of Academic Integrity policies.
