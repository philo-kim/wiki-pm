# PRD (Product Requirements Document) 템플릿

> 🚧 **Under Construction**  
> 이 페이지는 현재 작성 중입니다.

## 개요

PRD는 제품의 'What'과 'Why'를 명확히 전달하는 문서입니다.
개발팀이 'How'를 결정할 수 있도록 충분한 컨텍스트와 요구사항을 제공합니다.

## PRD의 목적

### 🎯 왜 PRD를 쓰는가

**Alignment (정렬)**
- 모든 이해관계자가 같은 이해
- 기대치 명확화
- 의사결정 기록

**Communication (소통)**
- 비동기 커뮤니케이션 지원
- 컨텍스트 전달
- 질문과 피드백의 기준점

**Documentation (문서화)**
- 미래 참조용 기록
- 의사결정 과정 추적
- 온보딩 자료

## PRD 구조

### 📋 핵심 섹션

```
1. Executive Summary
2. Problem & Opportunity
3. Goals & Success Metrics
4. User Stories & Requirements
5. Design & User Flow
6. Technical Considerations
7. Launch Plan
8. Risks & Mitigations
```

## 상세 가이드

### 1️⃣ Executive Summary

**한 페이지 요약**
- What: 무엇을 만드는가
- Why: 왜 필요한가
- Who: 누구를 위한 것인가
- When: 언제까지 필요한가

**예시**
```markdown
## Executive Summary

우리는 사용자가 더 쉽게 콘텐츠를 발견할 수 있도록 
개인화된 추천 시스템을 구축합니다.

현재 사용자의 60%가 원하는 콘텐츠를 찾지 못해 이탈하고 있으며,
이는 월 100만 달러의 기회비용입니다.

타겟 사용자는 주 3회 이상 방문하는 active user이며,
Q2 말까지 MVP 출시를 목표로 합니다.
```

### 2️⃣ Problem & Opportunity

**Problem Statement**
```
[사용자 세그먼트]는
[상황/컨텍스트]에서
[문제/니즈]를 경험한다.
현재 [기존 솔루션]은
[한계점] 때문에 불충분하다.
```

**Opportunity Sizing**
- Market Size: 영향받는 사용자 규모
- Business Impact: 예상 매출/비용 효과
- Strategic Value: 장기 전략과의 연계

**Evidence**
- 사용자 리서치 결과
- 데이터 분석 인사이트
- 경쟁사 벤치마킹

### 3️⃣ Goals & Success Metrics

**Goals (정성적 목표)**
- Primary Goal: 핵심 목표
- Secondary Goals: 부가 목표

**Success Metrics (정량적 지표)**

```markdown
## Success Metrics

### Primary Metrics
- 콘텐츠 발견률: 20% → 35%
- 평균 세션 시간: 5분 → 8분

### Secondary Metrics  
- 클릭률(CTR): 3% → 5%
- 재방문율: 40% → 50%

### Guardrail Metrics
- 페이지 로딩 속도: < 2초 유지
- 시스템 에러율: < 0.1% 유지
```

### 4️⃣ User Stories & Requirements

**User Stories Format**
```
As a [user type]
I want to [action]
So that [benefit]
```

**Requirements 구조**

```markdown
## Functional Requirements

### Must Have (P0)
- [ ] FR1: 사용자는 관심사를 선택할 수 있다
- [ ] FR2: 시스템은 선택 기반 추천을 제공한다

### Should Have (P1)
- [ ] FR3: 사용자는 추천을 피드백할 수 있다

### Nice to Have (P2)
- [ ] FR4: 사용자는 추천 알고리즘을 선택할 수 있다

## Non-Functional Requirements
- Performance: 응답 시간 < 200ms
- Scalability: 100만 MAU 지원
- Security: GDPR 준수
```

### 5️⃣ Design & User Flow

**User Journey**
```
Entry Point → Action → Result → Exit
```

**Wireframes/Mockups**
- Low-fi sketches
- Hi-fi designs
- Interactive prototypes
- Edge cases

**Information Architecture**
- Navigation structure
- Data model
- State management

### 6️⃣ Technical Considerations

**Architecture**
- System design
- API specifications
- Data flow
- Third-party integrations

**Constraints**
- Technical debt
- Platform limitations
- Performance requirements
- Security requirements

**Dependencies**
- Internal teams
- External services
- Data sources
- Infrastructure

### 7️⃣ Launch Plan

**Release Strategy**

```markdown
## Rollout Plan

### Phase 1: Internal Testing (Week 1-2)
- Target: 팀 내부 100명
- Success Criteria: 크리티컬 버그 0

### Phase 2: Beta Launch (Week 3-4)
- Target: 1% 사용자 (10,000명)
- Success Criteria: 긍정 피드백 70%

### Phase 3: Gradual Rollout (Week 5-8)
- 10% → 50% → 100%
- Success Criteria: 주요 지표 달성
```

**Go-to-Market**
- Marketing plan
- Communication strategy
- Training materials
- Support preparation

### 8️⃣ Risks & Mitigations

**Risk Matrix**

| Risk | Probability | Impact | Mitigation |
|------|------------|--------|------------|
| 개발 지연 | High | High | 스코프 조정 계획 수립 |
| 사용자 거부감 | Medium | High | A/B 테스트로 검증 |
| 성능 이슈 | Low | High | 로드 테스트 진행 |

## PRD 작성 팁

### ✨ Best Practices

**Do's**
- 📊 데이터로 뒷받침
- 🎯 명확한 성공 기준
- 👥 사용자 관점 유지
- 🔄 지속적 업데이트
- 💬 피드백 적극 수용

**Don'ts**
- ❌ 솔루션 고정
- ❌ 기술 명세 과도 기술
- ❌ 모호한 표현
- ❌ 너무 긴 문서
- ❌ 일방적 전달

### 📏 PRD 길이 가이드

**Feature PRD**: 3-5 pages
**Epic PRD**: 5-10 pages
**Initiative PRD**: 10-15 pages

## PRD 체크리스트

### 작성 전
- [ ] 문제 정의 명확한가?
- [ ] 사용자 리서치 충분한가?
- [ ] 비즈니스 케이스 있는가?
- [ ] 이해관계자 식별했는가?

### 작성 중
- [ ] Executive Summary 명확한가?
- [ ] Success Metrics 측정가능한가?
- [ ] Requirements 우선순위 있는가?
- [ ] Risks 식별되었는가?

### 작성 후
- [ ] 이해관계자 리뷰 받았는가?
- [ ] 피드백 반영했는가?
- [ ] 개발팀 이해했는가?
- [ ] Living document로 관리하는가?

## PRD 템플릿

### 📝 Simple PRD Template

```markdown
# [Feature Name] PRD

**Author**: [Name]
**Date**: [YYYY-MM-DD]
**Status**: [Draft/Review/Approved]

## Executive Summary
[1-2 paragraph summary]

## Problem Statement
- **User Problem**: 
- **Business Problem**: 
- **Evidence**: 

## Solution Overview
- **Approach**: 
- **Key Features**: 
- **Out of Scope**: 

## Success Metrics
- **Primary**: 
- **Secondary**: 
- **Guardrails**: 

## User Stories
1. As a [...], I want [...], so that [...]
2. ...

## Requirements
### Must Have
- [ ] 
### Should Have
- [ ] 
### Nice to Have
- [ ] 

## Design
[Link to designs]

## Technical Notes
- **API Changes**: 
- **Database Changes**: 
- **Dependencies**: 

## Launch Plan
- **Alpha**: 
- **Beta**: 
- **GA**: 

## Risks
1. **Risk**: [Mitigation]
2. ...

## Open Questions
1. 
2. 

## Appendix
- [Links to research]
- [Related docs]
```

## 다양한 PRD 포맷

### 🎨 상황별 PRD

**Agile/Sprint PRD**
- 더 짧고 집중적
- User story 중심
- 2주 스프린트 스코프

**Platform PRD**
- 기술 아키텍처 상세
- API 명세 포함
- 여러 팀 coordination

**Experiment PRD**
- 가설 명확히
- Success/Failure criteria
- Learning plan

## FAQ

### Q: PRD는 언제 쓰나요?
스프린트 시작 전, 최소 1주일 전에 초안 공유

### Q: 누가 PRD를 리뷰하나요?
개발, 디자인, QA, 비즈니스 등 모든 이해관계자

### Q: PRD가 바뀌면 어떻게 하나요?
Version history 관리, 변경사항 명확히 커뮤니케이션

### Q: PRD vs Spec 차이는?
PRD는 What & Why, Spec은 How

## 관련 자료

- [User Story 작성법](../product-design/)
- [Success Metrics 정의](../../2-strategy/goals-metrics/)
- [Launch Planning](../launch-deployment/)

---
*좋은 PRD는 팀이 '왜 이걸 만드는지' 이해하고 공감하게 만듭니다. 문서가 아닌 커뮤니케이션 도구로 접근하세요.*