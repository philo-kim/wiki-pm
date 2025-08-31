# Decision Document Templates

> 📝 **Templates**  
> 의사결정을 체계적으로 문서화하고 공유하기 위한 템플릿

## Overview

중요한 의사결정은 문서화되어야 합니다. 이 템플릿들은 의사결정 과정을 투명하게 만들고, 나중에 왜 그런 결정을 했는지 이해할 수 있도록 돕습니다.

## 🎯 Learning Objectives

이 페이지를 완료하면 다음을 활용할 수 있습니다:
- [x] RICE 우선순위 결정 템플릿
- [x] 의사결정 문서 (Decision Doc)
- [x] 기술 검토 문서 (RFC)
- [x] 회고 문서 템플릿

## 📊 RICE Prioritization Template

### RICE 스코어링 시트

```markdown
# RICE Priority Scoring - [프로젝트명] - [날짜]

## 📋 평가 항목 목록

| # | Feature/Project | Reach | Impact | Confidence | Effort | RICE Score | Priority |
|---|----------------|-------|--------|------------|--------|------------|----------|
| 1 | [항목 1] | | | | | | |
| 2 | [항목 2] | | | | | | |
| 3 | [항목 3] | | | | | | |

## 📐 평가 기준

### Reach (도달 범위)
- 분기당 영향받는 사용자 수
- 실제 숫자로 측정
- 예: 10,000명/분기

### Impact (영향력)
- 3 = Massive (대규모 영향)
- 2 = High (높은 영향)
- 1 = Medium (중간 영향)
- 0.5 = Low (낮은 영향)
- 0.25 = Minimal (최소 영향)

### Confidence (신뢰도)
- 100% = High (높은 확신)
- 80% = Medium (중간 확신)
- 50% = Low (낮은 확신)

### Effort (노력)
- Person-months (인원×개월)
- 예: 2명 × 3개월 = 6 person-months

### RICE Score 계산
```
RICE = (Reach × Impact × Confidence) / Effort
```

## 🔍 상세 분석

### 항목 1: [Feature Name]

**Reach 산정 근거**:
- 대상 사용자 세그먼트: 
- 예상 사용률: 
- 계산: [세그먼트 크기] × [사용률] = [Reach]

**Impact 평가 근거**:
- 해결하는 문제: 
- 기대 효과: 
- 점수: ___

**Confidence 수준**:
- 데이터 근거: 
- 불확실성 요소: 
- 점수: ___%

**Effort 추정**:
- 개발: ___ person-months
- 디자인: ___ person-months
- QA: ___ person-months
- 총합: ___ person-months

**최종 RICE Score**: ___

### 항목 2: [반복...]

## 🎯 최종 우선순위

1. **[1순위 항목]** - RICE: ___
   - 핵심 이유: 
   - 예상 결과: 

2. **[2순위 항목]** - RICE: ___
   - 핵심 이유: 
   - 예상 결과: 

3. **[3순위 항목]** - RICE: ___
   - 핵심 이유: 
   - 예상 결과: 

## ⚠️ 고려사항

- 기술적 의존성: 
- 리소스 제약: 
- 전략적 정렬: 
- 리스크 요소: 
```

## 📄 Decision Document Template

### 표준 의사결정 문서

```markdown
# Decision Document: [결정 제목]

**작성자**: [이름]  
**날짜**: [YYYY-MM-DD]  
**상태**: [Draft | Under Review | Decided | Obsolete]  
**결정권자**: [최종 결정권자]  
**이해관계자**: [관련자 목록]

## 📌 Executive Summary

[1-2문장으로 결정 사항 요약]

**결정**: [최종 결정 내용]  
**결정일**: [날짜]  
**시행일**: [날짜]

## 🎯 배경 및 문제 정의

### 배경 (Context)
[현재 상황과 이 결정이 필요한 이유]

### 문제 정의 (Problem Statement)
[해결하려는 구체적 문제]

### 목표 (Goals)
- [ ] 목표 1
- [ ] 목표 2
- [ ] 목표 3

### 비목표 (Non-Goals)
- 이 결정으로 해결하지 않는 것들
- 명시적으로 제외하는 범위

## 📊 옵션 분석

### Option 1: [옵션명]

**설명**:
[옵션에 대한 상세 설명]

**장점**:
- ✅ 
- ✅ 
- ✅ 

**단점**:
- ❌ 
- ❌ 
- ❌ 

**비용/노력**:
- 시간: 
- 리소스: 
- 비용: 

**리스크**:
- 리스크 1: [설명] - 완화 방안: [방안]
- 리스크 2: [설명] - 완화 방안: [방안]

### Option 2: [옵션명]
[위 형식 반복]

### Option 3: [옵션명]
[위 형식 반복]

## 📐 평가 기준

| 기준 | 가중치 | Option 1 | Option 2 | Option 3 |
|------|--------|----------|----------|----------|
| 실행 가능성 | 30% | _/10 | _/10 | _/10 |
| 비용 효율성 | 25% | _/10 | _/10 | _/10 |
| 사용자 영향 | 20% | _/10 | _/10 | _/10 |
| 기술적 우수성 | 15% | _/10 | _/10 | _/10 |
| 유지보수성 | 10% | _/10 | _/10 | _/10 |
| **총점** | **100%** | **_/10** | **_/10** | **_/10** |

## 🏆 권장 사항

**선택한 옵션**: Option ___

**선택 이유**:
1. 
2. 
3. 

**기각한 옵션들의 이유**:
- Option ___: 
- Option ___: 

## 📋 실행 계획

### 단계별 계획
| 단계 | 작업 | 담당자 | 기한 | 상태 |
|------|------|--------|------|------|
| 1 | | | | ⬜ |
| 2 | | | | ⬜ |
| 3 | | | | ⬜ |

### 성공 지표
- KPI 1: 
- KPI 2: 
- KPI 3: 

### 체크포인트
- [ ] [날짜]: 초기 검토
- [ ] [날짜]: 중간 점검
- [ ] [날짜]: 최종 평가

## ❓ 미해결 질문

- Q1: 
- Q2: 
- Q3: 

## 📎 참고 자료

- [링크 1]
- [링크 2]
- [링크 3]

## 📝 결정 기록

| 날짜 | 버전 | 변경사항 | 작성자 |
|------|------|----------|--------|
| | v1.0 | 초안 작성 | |
| | v1.1 | 피드백 반영 | |
| | v2.0 | 최종 결정 | |
```

## 🔧 RFC (Request for Comments) Template

### 기술 의사결정 문서

```markdown
# RFC: [제목]

**RFC 번호**: [YYYY-###]  
**작성자**: [이름]  
**상태**: [Draft | In Review | Accepted | Rejected | Superseded]  
**생성일**: [날짜]  
**업데이트**: [날짜]

## Abstract

[3-5문장으로 제안 요약]

## Motivation

### Why are we doing this?
[이 변경이 필요한 이유]

### What problem does it solve?
[해결하려는 구체적 문제]

### What is the expected outcome?
[기대 결과]

## Detailed Design

### Overview
[전체적인 설계 개요]

### Architecture
```
[아키텍처 다이어그램 또는 설명]
```

### API Design
```javascript
// API 예시
interface ProposedAPI {
  method1(): Result;
  method2(param: Type): Result;
}
```

### Data Model
```sql
-- 데이터 모델 예시
CREATE TABLE proposed_table (
  id INTEGER PRIMARY KEY,
  field1 VARCHAR(255),
  field2 TIMESTAMP
);
```

### Implementation Details
1. Phase 1: [설명]
2. Phase 2: [설명]
3. Phase 3: [설명]

## Alternatives Considered

### Alternative 1: [이름]
- 설명: 
- 장점: 
- 단점: 
- 기각 이유: 

### Alternative 2: [이름]
- 설명: 
- 장점: 
- 단점: 
- 기각 이유: 

## Trade-offs

### Performance
- 현재: 
- 제안: 
- 영향: 

### Complexity
- 현재: 
- 제안: 
- 영향: 

### Maintenance
- 현재: 
- 제안: 
- 영향: 

## Migration Plan

### Phase 1: Preparation
- [ ] 작업 1
- [ ] 작업 2

### Phase 2: Migration
- [ ] 작업 1
- [ ] 작업 2

### Phase 3: Cleanup
- [ ] 작업 1
- [ ] 작업 2

### Rollback Plan
[문제 발생 시 롤백 절차]

## Security Considerations

- 보안 위험 1: 
  - 완화 방안: 
- 보안 위험 2: 
  - 완화 방안: 

## Performance Impact

| Metric | Current | Expected | Change |
|--------|---------|----------|--------|
| Latency | | | |
| Throughput | | | |
| Memory | | | |
| CPU | | | |

## Open Questions

1. 
2. 
3. 

## References

- [참고 1]
- [참고 2]
- [참고 3]
```

## 📝 회고 문서 템플릿

### 프로젝트 회고 (Retrospective)

```markdown
# Project Retrospective: [프로젝트명]

**날짜**: [YYYY-MM-DD]  
**참가자**: [참가자 목록]  
**진행자**: [이름]  
**프로젝트 기간**: [시작일] - [종료일]

## 📊 프로젝트 개요

### 목표
- [ ] 목표 1 - [달성/미달성]
- [ ] 목표 2 - [달성/미달성]
- [ ] 목표 3 - [달성/미달성]

### 주요 지표
| Metric | Target | Actual | Result |
|--------|--------|--------|--------|
| | | | ✅/❌ |
| | | | ✅/❌ |
| | | | ✅/❌ |

## 🌟 What Went Well (잘한 점)

### 1. [성공 요인 1]
- **상황**: 
- **행동**: 
- **결과**: 
- **교훈**: 

### 2. [성공 요인 2]
- **상황**: 
- **행동**: 
- **결과**: 
- **교훈**: 

### 3. [성공 요인 3]
- **상황**: 
- **행동**: 
- **결과**: 
- **교훈**: 

## 🔥 What Didn't Go Well (개선점)

### 1. [문제 1]
- **상황**: 
- **영향**: 
- **근본 원인**: 
- **개선 방안**: 

### 2. [문제 2]
- **상황**: 
- **영향**: 
- **근본 원인**: 
- **개선 방안**: 

### 3. [문제 3]
- **상황**: 
- **영향**: 
- **근본 원인**: 
- **개선 방안**: 

## 💡 Key Insights (핵심 통찰)

1. **통찰 1**: 
   - 발견: 
   - 의미: 
   - 적용: 

2. **통찰 2**: 
   - 발견: 
   - 의미: 
   - 적용: 

3. **통찰 3**: 
   - 발견: 
   - 의미: 
   - 적용: 

## 🎯 Action Items

### Immediate (즉시 실행)
- [ ] [액션 1] - 담당: [이름] - Due: [날짜]
- [ ] [액션 2] - 담당: [이름] - Due: [날짜]

### Short-term (1개월 내)
- [ ] [액션 1] - 담당: [이름] - Due: [날짜]
- [ ] [액션 2] - 담당: [이름] - Due: [날짜]

### Long-term (3개월 내)
- [ ] [액션 1] - 담당: [이름] - Due: [날짜]
- [ ] [액션 2] - 담당: [이름] - Due: [날짜]

## 📚 Recommendations for Future

### Process Improvements
1. 
2. 
3. 

### Tool/Tech Recommendations
1. 
2. 
3. 

### Team Structure
1. 
2. 
3. 

## 🙏 Appreciation

팀원들에게 감사 인사:
- [이름]: [감사 내용]
- [이름]: [감사 내용]
- [이름]: [감사 내용]

## 📎 Appendix

- [관련 문서 링크]
- [데이터/차트]
- [추가 자료]
```

## 🎯 의사결정 체크리스트

### 의사결정 전
- [ ] 문제가 명확히 정의되었는가?
- [ ] 모든 옵션을 고려했는가?
- [ ] 필요한 데이터를 수집했는가?
- [ ] 이해관계자를 파악했는가?
- [ ] 평가 기준이 명확한가?

### 의사결정 중
- [ ] 객관적으로 평가했는가?
- [ ] 편향을 고려했는가?
- [ ] 리스크를 분석했는가?
- [ ] 되돌릴 수 있는 결정인가?
- [ ] 합의를 이끌어냈는가?

### 의사결정 후
- [ ] 결정을 문서화했는가?
- [ ] 모든 관련자에게 전달했는가?
- [ ] 실행 계획이 명확한가?
- [ ] 성공 지표를 정의했는가?
- [ ] 검토 일정을 잡았는가?

## 💡 Best Practices

### 좋은 의사결정 문서의 특징
1. **Clear** - 명확한 문제 정의
2. **Complete** - 모든 옵션 고려
3. **Objective** - 객관적 평가
4. **Actionable** - 실행 가능한 계획
5. **Traceable** - 추적 가능한 근거

### 피해야 할 것들
- ❌ 모호한 표현
- ❌ 숨겨진 가정
- ❌ 일방적 결정
- ❌ 근거 없는 주장
- ❌ 문서화 누락

## 📚 Related Resources

- [Decision Making](../foundations/decision-making.md) - 의사결정 프로세스
- [Prioritization](../tools/prioritization.md) - 우선순위 결정
- [Meeting Templates](meeting-templates.md) - 회의 템플릿

---

**Navigation**  
← [Feedback Templates](feedback-templates.md) | [Career Development](../career/portfolio-building.md) →

---

*좋은 결정은 좋은 프로세스에서 나옵니다.*

*Last updated: 2025-01-26*