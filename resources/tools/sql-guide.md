# PM을 위한 SQL 실무 가이드

## 🚀 5분 안에 첫 쿼리 실행하기

SQL은 PM의 필수 스킬입니다. 데이터 팀을 기다리지 말고 직접 인사이트를 찾아보세요.

**첫 번째 쿼리:**
```sql
SELECT 
  COUNT(*) as total_users,
  COUNT(DISTINCT user_id) as unique_users
FROM users
WHERE created_at >= '2024-01-01';
```

## 📊 왜 PM이 SQL을 알아야 하는가?

### PM에게 SQL이 필수인 이유

#### 1. 즉각적인 데이터 접근
```
❌ SQL 모르는 PM
"데이터팀에 요청 → 3일 대기 → 추가 질문 → 또 대기"

✅ SQL 아는 PM
"직접 쿼리 → 5분 내 결과 → 즉시 인사이트 → 빠른 의사결정"
```

#### 2. 깊은 데이터 탐색
```
처음 질문: "이번 달 가입자 수는?"
추가 질문: "그 중 모바일은?"
더 깊은 질문: "모바일 중 첫날 구매한 사람은?"
→ SQL로 즉시 드릴다운
```

#### 3. 가설 검증 능력
```sql
-- 가설: 주말 가입자의 리텐션이 더 높다
SELECT 
  CASE 
    WHEN DAYOFWEEK(signup_date) IN (1,7) THEN 'Weekend'
    ELSE 'Weekday'
  END as signup_type,
  AVG(CASE WHEN last_active >= signup_date + 7 THEN 1 ELSE 0 END) as d7_retention
FROM users
GROUP BY 1;
```

## 🔧 SQL 기초 문법

### SELECT - 데이터 조회의 시작

#### 기본 구조
```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition
GROUP BY column
ORDER BY column DESC
LIMIT number;
```

#### 실무 예제: 사용자 조회
```sql
-- 이번 달 가입한 활성 사용자
SELECT 
  user_id,
  email,
  DATE(created_at) as signup_date,
  last_login_at
FROM users
WHERE 
  created_at >= DATE_TRUNC('month', CURRENT_DATE)
  AND status = 'active'
ORDER BY created_at DESC
LIMIT 100;
```

### WHERE - 조건 필터링

#### 비교 연산자
```sql
-- 다양한 조건 조합
SELECT * FROM orders
WHERE 
  amount > 10000                    -- 1만원 초과
  AND status != 'cancelled'         -- 취소 아님
  AND created_at >= '2024-01-01'    -- 2024년 이후
  AND user_id IN (1, 2, 3)         -- 특정 사용자
  AND product_name LIKE '%프리미엄%' -- 프리미엄 포함
  AND discount IS NOT NULL;         -- 할인 적용
```

#### 날짜 다루기
```sql
-- 날짜 관련 필터링
SELECT * FROM events
WHERE 
  -- 오늘
  DATE(created_at) = CURRENT_DATE
  -- 어제
  DATE(created_at) = CURRENT_DATE - 1
  -- 이번 주
  created_at >= DATE_TRUNC('week', CURRENT_DATE)
  -- 지난 30일
  created_at >= CURRENT_DATE - INTERVAL '30 days'
  -- 특정 월
  DATE_TRUNC('month', created_at) = '2024-01-01';
```

### 집계 함수 - 데이터 요약

#### 주요 집계 함수
```sql
SELECT 
  COUNT(*) as total_rows,              -- 전체 행 수
  COUNT(DISTINCT user_id) as users,    -- 고유 사용자 수
  SUM(amount) as total_revenue,        -- 합계
  AVG(amount) as avg_order_value,      -- 평균
  MIN(created_at) as first_order,      -- 최소값
  MAX(created_at) as last_order,       -- 최대값
  STDDEV(amount) as std_deviation      -- 표준편차
FROM orders
WHERE status = 'completed';
```

#### GROUP BY와 함께 사용
```sql
-- 일별 매출 집계
SELECT 
  DATE(created_at) as date,
  COUNT(*) as orders,
  SUM(amount) as revenue,
  AVG(amount) as aov
FROM orders
GROUP BY DATE(created_at)
ORDER BY date DESC;
```

### JOIN - 테이블 연결

#### INNER JOIN
```sql
-- 주문한 사용자 정보 조회
SELECT 
  u.user_id,
  u.email,
  COUNT(o.order_id) as order_count,
  SUM(o.amount) as total_spent
FROM users u
INNER JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id, u.email;
```

#### LEFT JOIN
```sql
-- 주문하지 않은 사용자도 포함
SELECT 
  u.user_id,
  u.email,
  COALESCE(COUNT(o.order_id), 0) as order_count,
  COALESCE(SUM(o.amount), 0) as total_spent
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id, u.email;
```

#### 다중 JOIN
```sql
-- 사용자-주문-제품 연결
SELECT 
  u.email,
  p.product_name,
  o.amount,
  o.created_at
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN products p ON o.product_id = p.product_id
WHERE o.status = 'completed';
```

## 📈 PM 필수 쿼리 패턴

### 1. 퍼널 분석

#### 기본 퍼널 쿼리
```sql
-- 가입 → 활성화 → 구매 퍼널
WITH funnel AS (
  SELECT 
    user_id,
    created_at as signup_date,
    first_login_at,
    first_purchase_at
  FROM users
)
SELECT 
  COUNT(*) as total_signups,
  COUNT(first_login_at) as activated,
  COUNT(first_purchase_at) as purchased,
  ROUND(100.0 * COUNT(first_login_at) / COUNT(*), 2) as activation_rate,
  ROUND(100.0 * COUNT(first_purchase_at) / COUNT(*), 2) as purchase_rate
FROM funnel
WHERE signup_date >= '2024-01-01';
```

#### 단계별 전환율
```sql
-- 각 단계별 전환율 계산
WITH user_journey AS (
  SELECT 
    user_id,
    MAX(CASE WHEN event_name = 'signup' THEN 1 ELSE 0 END) as signed_up,
    MAX(CASE WHEN event_name = 'onboarding_complete' THEN 1 ELSE 0 END) as onboarded,
    MAX(CASE WHEN event_name = 'first_action' THEN 1 ELSE 0 END) as activated,
    MAX(CASE WHEN event_name = 'purchase' THEN 1 ELSE 0 END) as purchased
  FROM events
  GROUP BY user_id
)
SELECT 
  SUM(signed_up) as signups,
  SUM(onboarded) as onboarded,
  SUM(activated) as activated,
  SUM(purchased) as purchased,
  ROUND(100.0 * SUM(onboarded) / SUM(signed_up), 2) as onboarding_rate,
  ROUND(100.0 * SUM(activated) / SUM(onboarded), 2) as activation_rate,
  ROUND(100.0 * SUM(purchased) / SUM(activated), 2) as purchase_rate
FROM user_journey;
```

### 2. 코호트 분석

#### 월별 코호트 리텐션
```sql
-- 월별 가입 코호트의 리텐션
WITH cohorts AS (
  SELECT 
    user_id,
    DATE_TRUNC('month', created_at) as cohort_month
  FROM users
),
user_activities AS (
  SELECT 
    user_id,
    DATE_TRUNC('month', activity_date) as activity_month
  FROM activities
  GROUP BY 1, 2
)
SELECT 
  c.cohort_month,
  DATEDIFF('month', c.cohort_month, a.activity_month) as months_since_signup,
  COUNT(DISTINCT c.user_id) as cohort_size,
  COUNT(DISTINCT a.user_id) as retained_users,
  ROUND(100.0 * COUNT(DISTINCT a.user_id) / COUNT(DISTINCT c.user_id), 2) as retention_rate
FROM cohorts c
LEFT JOIN user_activities a ON c.user_id = a.user_id
WHERE c.cohort_month >= '2024-01-01'
GROUP BY 1, 2
ORDER BY 1, 2;
```

#### 행동 기반 코호트
```sql
-- 첫 구매 시기별 코호트
WITH first_purchase_cohort AS (
  SELECT 
    user_id,
    DATE_TRUNC('week', MIN(created_at)) as first_purchase_week
  FROM orders
  WHERE status = 'completed'
  GROUP BY user_id
)
SELECT 
  first_purchase_week,
  COUNT(DISTINCT user_id) as cohort_size,
  AVG(lifetime_value) as avg_ltv,
  AVG(purchase_frequency) as avg_frequency
FROM first_purchase_cohort fpc
JOIN user_metrics um ON fpc.user_id = um.user_id
GROUP BY first_purchase_week
ORDER BY first_purchase_week;
```

### 3. 사용자 세그멘테이션

#### RFM 분석
```sql
-- Recency, Frequency, Monetary 세그멘테이션
WITH rfm AS (
  SELECT 
    user_id,
    DATEDIFF('day', MAX(order_date), CURRENT_DATE) as recency,
    COUNT(*) as frequency,
    SUM(amount) as monetary
  FROM orders
  WHERE status = 'completed'
  GROUP BY user_id
),
rfm_scores AS (
  SELECT 
    user_id,
    recency,
    frequency,
    monetary,
    NTILE(5) OVER (ORDER BY recency DESC) as r_score,
    NTILE(5) OVER (ORDER BY frequency) as f_score,
    NTILE(5) OVER (ORDER BY monetary) as m_score
  FROM rfm
)
SELECT 
  CASE 
    WHEN r_score >= 4 AND f_score >= 4 AND m_score >= 4 THEN 'Champions'
    WHEN r_score >= 3 AND f_score >= 3 AND m_score >= 3 THEN 'Loyal Customers'
    WHEN r_score >= 3 AND f_score <= 2 THEN 'Potential Loyalists'
    WHEN r_score <= 2 AND f_score >= 3 THEN 'At Risk'
    WHEN r_score <= 2 AND f_score <= 2 THEN 'Lost'
    ELSE 'Others'
  END as segment,
  COUNT(*) as user_count,
  AVG(monetary) as avg_value
FROM rfm_scores
GROUP BY 1;
```

#### 파워 유저 식별
```sql
-- 상위 10% 활성 사용자
WITH user_activity AS (
  SELECT 
    user_id,
    COUNT(DISTINCT DATE(activity_date)) as active_days,
    COUNT(*) as total_actions,
    COUNT(DISTINCT session_id) as sessions
  FROM events
  WHERE activity_date >= CURRENT_DATE - 30
  GROUP BY user_id
),
percentiles AS (
  SELECT 
    user_id,
    active_days,
    total_actions,
    PERCENT_RANK() OVER (ORDER BY total_actions) as action_percentile
  FROM user_activity
)
SELECT 
  CASE 
    WHEN action_percentile >= 0.9 THEN 'Power Users'
    WHEN action_percentile >= 0.5 THEN 'Regular Users'
    ELSE 'Light Users'
  END as user_type,
  COUNT(*) as user_count,
  AVG(active_days) as avg_active_days,
  AVG(total_actions) as avg_actions
FROM percentiles
GROUP BY 1;
```

### 4. 실험 분석 (A/B 테스트)

#### 실험 결과 분석
```sql
-- A/B 테스트 결과 분석
WITH experiment_users AS (
  SELECT 
    user_id,
    variant,
    DATE(exposed_at) as exposure_date
  FROM experiments
  WHERE experiment_name = 'checkout_flow_v2'
),
conversions AS (
  SELECT 
    eu.user_id,
    eu.variant,
    CASE WHEN o.order_id IS NOT NULL THEN 1 ELSE 0 END as converted,
    o.amount
  FROM experiment_users eu
  LEFT JOIN orders o 
    ON eu.user_id = o.user_id 
    AND o.created_at >= eu.exposure_date
    AND o.created_at < eu.exposure_date + INTERVAL '7 days'
)
SELECT 
  variant,
  COUNT(DISTINCT user_id) as users,
  SUM(converted) as conversions,
  ROUND(100.0 * SUM(converted) / COUNT(DISTINCT user_id), 2) as conversion_rate,
  AVG(amount) as avg_order_value,
  -- 통계적 유의성을 위한 표준 오차
  ROUND(SQRT(conversion_rate * (100 - conversion_rate) / COUNT(DISTINCT user_id)), 2) as std_error
FROM conversions
GROUP BY variant;
```

### 5. 제품 사용 패턴

#### DAU/MAU/WAU 계산
```sql
-- 일간/주간/월간 활성 사용자
WITH daily_active AS (
  SELECT 
    DATE(activity_date) as date,
    COUNT(DISTINCT user_id) as dau
  FROM events
  GROUP BY DATE(activity_date)
),
weekly_active AS (
  SELECT 
    DATE_TRUNC('week', activity_date) as week,
    COUNT(DISTINCT user_id) as wau
  FROM events
  GROUP BY DATE_TRUNC('week', activity_date)
),
monthly_active AS (
  SELECT 
    DATE_TRUNC('month', activity_date) as month,
    COUNT(DISTINCT user_id) as mau
  FROM events
  GROUP BY DATE_TRUNC('month', activity_date)
)
SELECT 
  d.date,
  d.dau,
  w.wau,
  m.mau,
  ROUND(100.0 * d.dau / m.mau, 2) as dau_mau_ratio,
  ROUND(100.0 * w.wau / m.mau, 2) as wau_mau_ratio
FROM daily_active d
JOIN weekly_active w ON DATE_TRUNC('week', d.date) = w.week
JOIN monthly_active m ON DATE_TRUNC('month', d.date) = m.month
WHERE d.date >= CURRENT_DATE - 30
ORDER BY d.date DESC;
```

#### 기능 사용률
```sql
-- 기능별 사용률과 빈도
SELECT 
  feature_name,
  COUNT(DISTINCT user_id) as unique_users,
  COUNT(*) as total_uses,
  ROUND(100.0 * COUNT(DISTINCT user_id) / (SELECT COUNT(DISTINCT user_id) FROM users), 2) as adoption_rate,
  ROUND(1.0 * COUNT(*) / COUNT(DISTINCT user_id), 2) as uses_per_user,
  ROUND(1.0 * COUNT(DISTINCT DATE(created_at)) / COUNT(DISTINCT user_id), 2) as days_used_per_user
FROM feature_events
WHERE created_at >= CURRENT_DATE - 30
GROUP BY feature_name
ORDER BY unique_users DESC;
```

## 🔍 고급 SQL 테크닉

### Window Functions

#### RANK와 ROW_NUMBER
```sql
-- 사용자별 구매 순위
SELECT 
  user_id,
  order_id,
  amount,
  created_at,
  ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY created_at) as order_sequence,
  RANK() OVER (PARTITION BY user_id ORDER BY amount DESC) as amount_rank,
  DENSE_RANK() OVER (ORDER BY amount DESC) as global_rank
FROM orders
WHERE status = 'completed';
```

#### LAG와 LEAD
```sql
-- 이전/다음 구매와의 간격 계산
SELECT 
  user_id,
  order_id,
  created_at,
  LAG(created_at) OVER (PARTITION BY user_id ORDER BY created_at) as previous_order,
  DATEDIFF('day', 
    LAG(created_at) OVER (PARTITION BY user_id ORDER BY created_at), 
    created_at
  ) as days_between_orders,
  LEAD(created_at) OVER (PARTITION BY user_id ORDER BY created_at) as next_order
FROM orders
WHERE status = 'completed';
```

#### 누적 합계와 이동 평균
```sql
-- 누적 매출과 7일 이동 평균
SELECT 
  DATE(created_at) as date,
  SUM(amount) as daily_revenue,
  SUM(SUM(amount)) OVER (ORDER BY DATE(created_at)) as cumulative_revenue,
  AVG(SUM(amount)) OVER (
    ORDER BY DATE(created_at) 
    ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
  ) as seven_day_avg
FROM orders
WHERE status = 'completed'
GROUP BY DATE(created_at)
ORDER BY date DESC
LIMIT 30;
```

### CTE (Common Table Expressions)

#### 복잡한 분석을 단계별로
```sql
-- LTV 계산을 위한 다단계 분석
WITH user_first_purchase AS (
  -- 첫 구매 시점
  SELECT 
    user_id,
    MIN(created_at) as first_purchase_date
  FROM orders
  WHERE status = 'completed'
  GROUP BY user_id
),
user_revenue AS (
  -- 사용자별 총 매출
  SELECT 
    o.user_id,
    ufp.first_purchase_date,
    COUNT(*) as total_orders,
    SUM(o.amount) as total_revenue,
    MAX(o.created_at) as last_purchase_date
  FROM orders o
  JOIN user_first_purchase ufp ON o.user_id = ufp.user_id
  WHERE o.status = 'completed'
  GROUP BY o.user_id, ufp.first_purchase_date
),
user_ltv AS (
  -- LTV 계산
  SELECT 
    user_id,
    first_purchase_date,
    total_orders,
    total_revenue,
    DATEDIFF('day', first_purchase_date, last_purchase_date) as customer_lifetime_days,
    total_revenue as ltv
  FROM user_revenue
)
-- 코호트별 평균 LTV
SELECT 
  DATE_TRUNC('month', first_purchase_date) as cohort_month,
  COUNT(*) as cohort_size,
  AVG(ltv) as avg_ltv,
  AVG(total_orders) as avg_orders,
  AVG(customer_lifetime_days) as avg_lifetime_days
FROM user_ltv
GROUP BY DATE_TRUNC('month', first_purchase_date)
ORDER BY cohort_month;
```

### 조건부 집계

#### CASE WHEN 활용
```sql
-- 시간대별 사용 패턴 분석
SELECT 
  EXTRACT(HOUR FROM created_at) as hour,
  COUNT(*) as total_events,
  COUNT(CASE WHEN device_type = 'mobile' THEN 1 END) as mobile_events,
  COUNT(CASE WHEN device_type = 'desktop' THEN 1 END) as desktop_events,
  COUNT(CASE WHEN user_type = 'premium' THEN 1 END) as premium_events,
  ROUND(100.0 * COUNT(CASE WHEN user_type = 'premium' THEN 1 END) / COUNT(*), 2) as premium_ratio
FROM events
WHERE DATE(created_at) = CURRENT_DATE - 1
GROUP BY EXTRACT(HOUR FROM created_at)
ORDER BY hour;
```

## 🎯 실전 프로젝트 쿼리

### 주간 비즈니스 리포트
```sql
-- 주간 핵심 지표 대시보드
WITH current_week AS (
  SELECT 
    COUNT(DISTINCT user_id) as wau,
    COUNT(DISTINCT CASE WHEN created_at >= DATE_TRUNC('week', CURRENT_DATE) THEN user_id END) as new_users,
    COUNT(DISTINCT order_id) as orders,
    SUM(amount) as revenue
  FROM (
    SELECT user_id, NULL as order_id, NULL as amount, created_at FROM users
    UNION ALL
    SELECT user_id, order_id, amount, created_at FROM orders WHERE status = 'completed'
  ) combined
  WHERE created_at >= DATE_TRUNC('week', CURRENT_DATE)
    AND created_at < DATE_TRUNC('week', CURRENT_DATE) + INTERVAL '7 days'
),
previous_week AS (
  SELECT 
    COUNT(DISTINCT user_id) as wau,
    COUNT(DISTINCT CASE WHEN created_at >= DATE_TRUNC('week', CURRENT_DATE) - 7 THEN user_id END) as new_users,
    COUNT(DISTINCT order_id) as orders,
    SUM(amount) as revenue
  FROM (
    SELECT user_id, NULL as order_id, NULL as amount, created_at FROM users
    UNION ALL
    SELECT user_id, order_id, amount, created_at FROM orders WHERE status = 'completed'
  ) combined
  WHERE created_at >= DATE_TRUNC('week', CURRENT_DATE) - 7
    AND created_at < DATE_TRUNC('week', CURRENT_DATE)
)
SELECT 
  'Current Week' as period,
  cw.wau,
  cw.new_users,
  cw.orders,
  cw.revenue,
  ROUND(100.0 * (cw.wau - pw.wau) / pw.wau, 2) as wau_growth,
  ROUND(100.0 * (cw.revenue - pw.revenue) / pw.revenue, 2) as revenue_growth
FROM current_week cw, previous_week pw
UNION ALL
SELECT 
  'Previous Week' as period,
  wau,
  new_users,
  orders,
  revenue,
  NULL as wau_growth,
  NULL as revenue_growth
FROM previous_week;
```

### 체류 시간 분석
```sql
-- 세션별 체류 시간과 행동 분석
WITH session_data AS (
  SELECT 
    session_id,
    user_id,
    MIN(created_at) as session_start,
    MAX(created_at) as session_end,
    COUNT(*) as event_count,
    COUNT(DISTINCT event_name) as unique_events,
    DATEDIFF('second', MIN(created_at), MAX(created_at)) as session_duration_seconds
  FROM events
  WHERE created_at >= CURRENT_DATE - 7
  GROUP BY session_id, user_id
  HAVING COUNT(*) > 1  -- 단일 이벤트 세션 제외
)
SELECT 
  DATE(session_start) as date,
  COUNT(DISTINCT session_id) as total_sessions,
  COUNT(DISTINCT user_id) as unique_users,
  AVG(session_duration_seconds / 60.0) as avg_session_minutes,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY session_duration_seconds / 60.0) as median_session_minutes,
  AVG(event_count) as avg_events_per_session,
  AVG(unique_events) as avg_unique_events
FROM session_data
GROUP BY DATE(session_start)
ORDER BY date DESC;
```

## 💡 SQL 최적화 팁

### 성능 개선 방법

#### 1. 인덱스 활용
```sql
-- 인덱스가 있는 컬럼으로 필터링
-- Good: indexed column
SELECT * FROM users WHERE user_id = 12345;

-- Bad: non-indexed column
SELECT * FROM users WHERE email LIKE '%@gmail.com';
```

#### 2. 적절한 JOIN 순서
```sql
-- 작은 테이블을 먼저 JOIN
-- Good: small table first
SELECT * 
FROM small_table s
JOIN large_table l ON s.id = l.small_id;
```

#### 3. 필요한 컬럼만 SELECT
```sql
-- Good: specific columns
SELECT user_id, email, created_at FROM users;

-- Bad: select all
SELECT * FROM users;
```

#### 4. 서브쿼리 대신 CTE 사용
```sql
-- Good: CTE
WITH active_users AS (
  SELECT user_id FROM events 
  WHERE created_at >= CURRENT_DATE - 7
)
SELECT * FROM users WHERE user_id IN (SELECT user_id FROM active_users);

-- Bad: nested subquery
SELECT * FROM users 
WHERE user_id IN (
  SELECT user_id FROM events 
  WHERE created_at >= CURRENT_DATE - 7
);
```

## 🛠️ 도구별 SQL 차이점

### PostgreSQL vs MySQL vs BigQuery

#### 날짜 함수 차이
```sql
-- PostgreSQL
DATE_TRUNC('month', created_at)

-- MySQL
DATE_FORMAT(created_at, '%Y-%m-01')

-- BigQuery
DATE_TRUNC(created_at, MONTH)
```

#### 문자열 연결
```sql
-- PostgreSQL
first_name || ' ' || last_name

-- MySQL
CONCAT(first_name, ' ', last_name)

-- BigQuery
CONCAT(first_name, ' ', last_name)
```

## ✅ SQL 학습 체크리스트

### 초급 (1-2주)
- [ ] SELECT, FROM, WHERE 기본
- [ ] ORDER BY, LIMIT
- [ ] 기본 집계 함수 (COUNT, SUM, AVG)
- [ ] GROUP BY
- [ ] 날짜 필터링

### 중급 (3-4주)
- [ ] JOIN (INNER, LEFT, RIGHT)
- [ ] 서브쿼리
- [ ] CASE WHEN
- [ ] HAVING
- [ ] UNION

### 고급 (5-6주)
- [ ] Window Functions
- [ ] CTE (WITH)
- [ ] 복잡한 JOIN
- [ ] 성능 최적화
- [ ] 정규표현식

## 🚀 다음 단계

**SQL 마스터 후**
→ [Python 데이터 분석](./python-analytics.md)
→ [대시보드 구축](../../3-delivery/product-operations/monitoring-dashboard.md)
→ [데이터 파이프라인](../../3-delivery/product-operations/data-pipeline.md)

---

*"If you torture the data long enough, it will confess to anything."*  
*- Ronald Coase*

*"하지만 SQL을 알면, 데이터가 스스로 진실을 말하게 할 수 있다."*