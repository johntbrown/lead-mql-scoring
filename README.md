# Lead MQL Scoring & Breakdown (UTM × Creation Date)

A tiny, practical toolkit to score leads as **MQL** (Marketing Qualified Lead) and report results by **UTM source** and **lead creation date**.

**MQL rule:**  
- valid email (not bounced)  
- at least one open event  

---

## SQL: Postgres

```sql
-- see sql/postgres.sql
# Lead MQL Scoring & Breakdown (UTM × Creation Date)

A tiny, practical toolkit to score leads as **MQL** (Marketing Qualified Lead) and report results by **UTM source** and **lead creation date**.

**MQL rule:**  
- valid email (not bounced)  
- at least one open event  

---

## 📊 SQL

See [`sql/postgres.sql`](sql/postgres.sql) and [`sql/bigquery.sql`](sql/bigquery.sql) for query versions.  

---

## 🐍 Python

```bash
pip install pandas
python score_leads.py --leads examples/leads.csv --events examples/events.csv --outdir ./out
