# Product Design & Specification - 제품 설계와 명세

> 🚧 **Under Construction**  
> 이 페이지는 현재 작성 중입니다.

## 개요

아이디어를 구체적인 제품 명세로 변환하는 과정입니다.
개발팀이 무엇을 만들어야 하는지 명확히 이해할 수 있도록 요구사항을 정의하고 문서화합니다.

## 📚 이 섹션에서 다루는 내용

### 요구사항 정의
- Functional Requirements
- Non-functional Requirements
- User Stories 작성
- Acceptance Criteria

### 제품 명세 문서
- PRD 작성
- Technical Spec 협업
- API 명세
- 데이터 모델

### 디자인 협업
- 와이어프레임
- 프로토타이핑
- Design Handoff
- UI/UX 리뷰

### 범위 관리
- MVP 정의
- Scope Creep 방지
- Phase 나누기
- Out of Scope 명시

## 🎯 학습 목표

이 섹션을 완료하면:
- 명확한 PRD 작성 능력
- User Story 마스터
- 디자이너/개발자와 효과적 협업
- 범위 관리 스킬

## 📖 주요 문서

- [PRD 템플릿](./prd-template.md)
- User Story 작성법 (준비 중)
- Acceptance Criteria 가이드 (준비 중)
- MVP 정의 방법 (준비 중)

## 📝 PRD 핵심 구성

### Executive Summary
- What: 무엇을 만드는가
- Why: 왜 필요한가
- Who: 누구를 위한가
- When: 언제까지인가

### Problem & Solution
- Problem Statement
- Proposed Solution
- Alternative Considered
- Why Now

### Requirements
- Must Have (P0)
- Should Have (P1)
- Nice to Have (P2)
- Out of Scope

### Success Metrics
- Primary Metrics
- Secondary Metrics
- Guardrail Metrics
- Monitoring Plan

## 📐 User Story 작성

### 기본 포맷
```
As a [user type]
I want to [action]
So that [benefit]
```

### 좋은 User Story 특징 (INVEST)
- **I**ndependent: 독립적
- **N**egotiable: 협상 가능
- **V**aluable: 가치 있는
- **E**stimable: 추정 가능
- **S**mall: 작은 단위
- **T**estable: 테스트 가능

### Acceptance Criteria
```
Given [context]
When [action]
Then [expected result]
```

## 🎨 디자인 협업

### 디자인 프로세스 참여
- Problem Definition 공유
- Design Sprint 참여
- Iteration 피드백
- Final Review

### 효과적인 피드백
- 구체적이고 실행 가능한
- 사용자 관점 유지
- 제약 조건 공유
- 대안 제시

### Handoff 체크리스트
- [ ] 모든 상태 정의 (empty, loading, error)
- [ ] 반응형 디자인 명세
- [ ] 마이크로 인터랙션
- [ ] 접근성 고려사항
- [ ] 엣지 케이스

## 🚀 MVP 정의

### MVP 원칙
- Minimum: 최소한의 기능
- Viable: 실제 사용 가능
- Product: 완성된 경험

### Scoping 기법
```
Must Have (Core)
    ↓
Should Have (Enhanced)
    ↓  
Could Have (Delightful)
    ↓
Won't Have (Future)
```

### MVP 체크리스트
- [ ] 핵심 문제 해결하는가?
- [ ] 타겟 사용자가 사용 가능한가?
- [ ] 측정 가능한 가치 제공하는가?
- [ ] 기술적으로 실현 가능한가?
- [ ] 2-3개월 내 출시 가능한가?

## ⚠️ 흔한 실수

### PRD 작성 시
- 솔루션 고정
- 너무 기술적
- 컨텍스트 부족
- 성공 기준 모호

### User Story 작성 시
- 너무 크거나 작음
- 가치 불명확
- 테스트 불가능
- 의존성 과다

### 범위 관리 시
- Scope Creep 허용
- MVP 과대 설정
- 우선순위 불명확
- 버퍼 미고려

## 💡 실전 팁

### PRD 작성
- 독자를 고려한 작성
- 시각 자료 활용
- 버전 관리 철저
- 정기 업데이트

### 요구사항 수집
- 모든 이해관계자 참여
- 암묵적 요구사항 발굴
- 제약 조건 명시
- 가정 문서화

### 커뮤니케이션
- Early and Often
- Visual > Text
- Prototype > Description
- Example > Abstract

## 📊 품질 체크

### PRD 품질
- 명확성: 모호함 없음
- 완전성: 필요 정보 포함
- 일관성: 모순 없음
- 추적가능성: 변경 이력

### 요구사항 품질
- 검증가능성
- 실현가능성
- 필요성
- 우선순위

## 🔗 다음 단계

- [개발 프로세스](../development-process/) - 명세를 구현으로
- [QA & 테스팅](../launch-deployment/) - 요구사항 검증
- [프로토타이핑](../experimentation/) - 빠른 검증

---
*좋은 명세는 What과 Why를 명확히 하되, How는 팀에게 맡깁니다.*