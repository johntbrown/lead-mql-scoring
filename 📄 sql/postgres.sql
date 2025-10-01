WITH openers AS (
  SELECT DISTINCT e.lead_id
  FROM events e
  WHERE e.event_type = 'email_open'
),
scored AS (
  SELECT
    l.lead_id,
    l.utm_source,
    l.created_at,
    (CASE WHEN (NOT l.email_bounced) AND (o.lead_id IS NOT NULL) THEN 1 ELSE 0 END) AS is_mql,
    (CASE WHEN (NOT l.email_bounced) AND (o.lead_id IS NOT NULL) THEN 100 ELSE 0 END) AS score
  FROM leads l
  LEFT JOIN openers o ON o.lead_id = l.lead_id
)
SELECT
  s.utm_source,
  DATE_TRUNC('day', s.created_at) AS created_date,
  COUNT(*) AS leads,
  SUM(s.is_mql) AS mqls,
  ROUND(AVG(s.is_mql::numeric), 4) AS mql_rate,
  SUM(s.score) AS total_score
FROM scored s
GROUP BY 1, 2
ORDER BY 2, 1;
