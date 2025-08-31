# Data Analysis for PMs

> 🚧 **Under Construction**  
> This page is currently being developed. Expected completion: March 2025

## Overview

데이터 분석은 PM의 핵심 역량입니다. 직감이 아닌 데이터에 기반한 의사결정을 통해 제품의 성공 가능성을 높일 수 있습니다.

## 🎯 Learning Objectives

이 페이지를 완료하면 다음을 이해하게 됩니다:
- [ ] PM을 위한 데이터 분석 기초
- [ ] 핵심 메트릭 정의와 추적
- [ ] SQL 기본 쿼리
- [ ] 데이터 시각화와 스토리텔링

## 📋 Content Outline (Coming Soon)

### 1. Data Analysis Fundamentals

#### Types of Analytics
- **Descriptive**: What happened?
- **Diagnostic**: Why did it happen?
- **Predictive**: What will happen?
- **Prescriptive**: What should we do?

#### Data Types
- **Quantitative**: Numbers, metrics
- **Qualitative**: Feedback, reviews
- **Behavioral**: User actions
- **Attitudinal**: User opinions

### 2. Key Product Metrics

#### Growth Metrics
```
User Acquisition
├── New Users
├── CAC (Customer Acquisition Cost)
├── Conversion Rate
└── Channel Performance

User Engagement
├── DAU/MAU/WAU
├── Session Duration
├── Pages per Session
└── Feature Adoption

User Retention
├── Day 1/7/30 Retention
├── Cohort Retention
├── Churn Rate
└── Resurrection Rate

Monetization
├── ARPU (Average Revenue Per User)
├── LTV (Lifetime Value)
├── MRR/ARR
└── Conversion to Paid
```

### 3. SQL for PMs

#### Basic SQL Queries
```sql
-- User Activity Analysis
SELECT 
    DATE(created_at) as signup_date,
    COUNT(DISTINCT user_id) as new_users,
    COUNT(*) as total_signups
FROM users
WHERE created_at >= '2025-01-01'
GROUP BY DATE(created_at)
ORDER BY signup_date DESC;

-- Retention Cohort
SELECT 
    DATE_TRUNC('week', first_use) as cohort_week,
    COUNT(DISTINCT user_id) as cohort_size,
    COUNT(DISTINCT CASE 
        WHEN days_since_signup = 7 THEN user_id 
    END) as day7_retained
FROM user_activity
GROUP BY cohort_week;

-- Feature Adoption
SELECT 
    feature_name,
    COUNT(DISTINCT user_id) as unique_users,
    COUNT(*) as total_uses,
    AVG(usage_time) as avg_duration
FROM feature_events
WHERE event_date >= CURRENT_DATE - 30
GROUP BY feature_name
ORDER BY unique_users DESC;
```

### 4. Analytics Tools

#### Tool Categories
| Category | Tools | Use Case |
|----------|-------|----------|
| Product Analytics | Amplitude, Mixpanel | User behavior |
| Web Analytics | Google Analytics | Traffic analysis |
| Business Intelligence | Tableau, Looker | Dashboards |
| SQL Tools | BigQuery, Redshift | Data queries |
| Experimentation | Optimizely, VWO | A/B testing |

### 5. Data Visualization

#### Chart Selection Guide
```
Comparison        → Bar Chart
Trend over Time   → Line Chart
Composition       → Pie/Stacked Bar
Distribution      → Histogram
Correlation       → Scatter Plot
Flow              → Funnel/Sankey
```

#### Dashboard Best Practices
1. **Clear Hierarchy**: Most important metrics first
2. **Consistent Colors**: Same color = same metric
3. **Appropriate Timeframes**: Daily/Weekly/Monthly
4. **Actionable Insights**: Not just numbers
5. **Mobile Responsive**: Accessible anywhere

## 📊 Analysis Framework (Preview)

### HEART Framework
- **Happiness**: User satisfaction (NPS, CSAT)
- **Engagement**: User activity (DAU, Sessions)
- **Adoption**: New users (Signups, Activation)
- **Retention**: User loyalty (Churn, Retention)
- **Task Success**: Goal completion (Conversion, Time)

### AARRR (Pirate Metrics)
- **Acquisition**: How do users find us?
- **Activation**: Do they have a good first experience?
- **Retention**: Do they come back?
- **Revenue**: How do we make money?
- **Referral**: Do they tell others?

## 💡 Common Analysis Mistakes

1. **Correlation ≠ Causation** - 상관관계는 인과관계가 아님
2. **Sample Size Issues** - 충분한 데이터 필요
3. **Survivorship Bias** - 실패 사례도 분석
4. **Vanity Metrics** - 의미 없는 지표 추적
5. **Analysis Paralysis** - 과도한 분석

## 📚 Related Resources

- [User Research](user-research.md) - 정성적 데이터
- [OKRs & KPIs](../methods/okrs-kpis.md) - 메트릭 정의
- [Prioritization](prioritization.md) - 데이터 기반 우선순위

## 🎯 Practice Exercises (Coming Soon)

1. **SQL Challenge**: Write queries for common metrics
2. **Dashboard Design**: Create a product dashboard
3. **A/B Test Analysis**: Interpret experiment results
4. **Cohort Analysis**: Build retention tables

## 📖 Recommended Reading (To be added)

- [ ] "Lean Analytics" - Croll & Yoskovitz
- [ ] "Trustworthy Online Controlled Experiments" - Kohavi
- [ ] "SQL for Data Scientists" - Renée Teate
- [ ] "Storytelling with Data" - Cole Nussbaumer Knaflic

---

**Navigation**  
← [User Research](user-research.md) | [Roadmapping](roadmapping.md) →

---

*Complete data analysis guides coming soon!*

*Last updated: 2025-01-26*
