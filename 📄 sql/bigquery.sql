WITH openers AS (
  SELECT DISTINCT lead_id
  FROM `project.dataset.events`
  WHERE event_type = 'email_open'
),
scored AS (
  SELECT
    l.lead_id,
    l.utm_source,
    l.created_at,
    IF(NOT l.email_bounced AND o.lead_id IS NOT NULL, 1, 0) AS is_mql,
    IF(NOT l.email_bounced AND o.lead_id IS NOT NULL, 100, 0) AS score
  FROM `project.dataset.leads` l
  LEFT JOIN openers o USING (lead_id)
)
SELECT
  utm_source,
  DATE(created_at) AS created_date,
  COUNT(*) AS leads,
  SUM(is_mql) AS mqls,
  ROUND(AVG(CAST(is_mql AS FLOAT64)), 4) AS mql_rate,
  SUM(score) AS total_score
FROM scored
GROUP BY 1, 2
ORDER BY created_date, utm_source;
