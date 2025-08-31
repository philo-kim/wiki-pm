# Prioritization Frameworks

> 🚧 **Under Construction**  
> This page is currently being developed. Expected completion: March 2025

## Overview

효과적인 우선순위 결정은 PM의 가장 중요한 역량 중 하나입니다. 제한된 리소스로 최대의 가치를 창출하기 위한 체계적인 프레임워크를 학습합니다.

## 🎯 Learning Objectives

이 페이지를 완료하면 다음을 이해하게 됩니다:
- [ ] 주요 우선순위 프레임워크
- [ ] 각 프레임워크의 장단점
- [ ] 상황별 프레임워크 선택
- [ ] 이해관계자 설득 방법

## 📋 Content Outline (Coming Soon)

### 1. Prioritization Frameworks Overview

#### Popular Frameworks
1. **RICE** - Reach, Impact, Confidence, Effort
2. **ICE** - Impact, Confidence, Ease
3. **Value vs Effort** - 2x2 Matrix
4. **Kano Model** - Customer Satisfaction
5. **MoSCoW** - Must/Should/Could/Won't
6. **Opportunity Scoring** - Importance vs Satisfaction

### 2. RICE Framework

#### RICE Formula
```
RICE Score = (Reach × Impact × Confidence) / Effort
```

#### Scoring Guide
| Factor | Score | Description |
|--------|-------|-------------|
| **Reach** | # of users | Users affected per quarter |
| **Impact** | 0.25-3 | Minimal(0.25) to Massive(3) |
| **Confidence** | 0-100% | How certain are we? |
| **Effort** | Person-months | Total team effort |

#### RICE Example
```
Feature: One-Click Checkout

Reach: 10,000 users/quarter
Impact: 2 (High)
Confidence: 80%
Effort: 3 person-months

RICE Score = (10,000 × 2 × 0.8) / 3 = 5,333
```

### 3. Value vs Effort Matrix

```
        High Value
            ↑
    ┌───────┬───────┐
    │ Quick │ Major │
    │ Wins  │ Bets  │
    ├───────┼───────┤
    │ Fill- │ Time  │
    │ ins   │ Sinks │
    └───────┴───────┘
    Low ← Effort → High
```

#### Quadrant Strategy
- **Quick Wins**: Do immediately
- **Major Bets**: Plan carefully
- **Fill-ins**: Do if time permits
- **Time Sinks**: Avoid or deprioritize

### 4. Kano Model

#### Feature Categories
```
Customer Satisfaction
        ↑
        │     Delighters
        │    ╱
        │   ╱  Performance
        │  ╱  ╱
        │ ╱  ╱
────────┼────────→ Investment
        │
        │ Basic
        ↓
```

- **Basic (Must-have)**: Expected features
- **Performance**: More is better
- **Delighters**: Unexpected joy

### 5. MoSCoW Method

#### Categories
- **Must Have** (60%): Critical for launch
- **Should Have** (20%): Important but not vital
- **Could Have** (20%): Nice to have
- **Won't Have**: Out of scope

#### MoSCoW Template
```markdown
## Sprint Planning

### Must Have (Max 60%)
- [ ] User authentication
- [ ] Payment processing
- [ ] Core workflow

### Should Have (Max 20%)
- [ ] Advanced filters
- [ ] Export functionality

### Could Have (Max 20%)
- [ ] Dark mode
- [ ] Animations

### Won't Have (This Sprint)
- [ ] AI recommendations
- [ ] Social features
```

### 6. Opportunity Scoring

#### Formula
```
Opportunity = Importance × (Importance - Satisfaction)
```

#### Survey Questions
1. How important is this feature? (1-10)
2. How satisfied are you currently? (1-10)

## 🎯 Framework Selection Guide

| Situation | Recommended Framework |
|-----------|----------------------|
| Limited resources | Value vs Effort |
| Data-driven team | RICE |
| Customer-centric | Kano Model |
| Sprint planning | MoSCoW |
| Feature comparison | ICE |
| Innovation focus | Opportunity Scoring |

## 💡 Prioritization Process

### Step 1: Gather Inputs
- Customer feedback
- Business goals
- Technical constraints
- Market trends

### Step 2: Score Items
- Apply chosen framework
- Get team input
- Document assumptions

### Step 3: Review & Adjust
- Sanity check results
- Consider dependencies
- Account for risks

### Step 4: Communicate
- Share rationale
- Explain trade-offs
- Get buy-in

## ⚠️ Common Mistakes

1. **Analysis Paralysis** - Perfect scoring vs action
2. **Ignoring Dependencies** - Technical prerequisites
3. **Stakeholder Bias** - HiPPO (Highest Paid Person's Opinion)
4. **Static Priorities** - Not revisiting decisions
5. **Framework Dogma** - One size fits all

## 📚 Related Resources

- [Roadmapping](roadmapping.md) - 우선순위를 로드맵으로
- [Data Analysis](data-analysis.md) - 데이터 기반 결정
- [OKRs & KPIs](../methods/okrs-kpis.md) - 목표와 연결

## 🛠 Tools & Templates (Coming Soon)

### Prioritization Tools
- Productboard
- airfocus
- ProdPad
- Aha!

### Templates
- RICE Calculator
- Value/Effort Matrix
- MoSCoW Planner
- Kano Survey

## 📖 Recommended Reading (To be added)

- [ ] "The Lean Product Playbook" - Dan Olsen
- [ ] "Inspired" - Marty Cagan
- [ ] "The Art of Product Management" - Rich Mironov
- [ ] "Strategize" - Roman Pichler

---

**Navigation**  
← [Roadmapping](roadmapping.md) | [Case Studies](../case-studies/b2c-products.md) →

---

*Complete prioritization toolkit coming soon!*

*Last updated: 2025-01-26*
