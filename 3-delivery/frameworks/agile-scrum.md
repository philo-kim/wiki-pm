# Agile & Scrum 프레임워크

> 🚧 **Under Construction**  
> 이 페이지는 현재 작성 중입니다.

## 개요

Agile은 철학이고, Scrum은 그것을 실현하는 프레임워크입니다.
변화를 포용하고, 고객 가치를 빠르게 전달하며, 지속적으로 개선하는 것이 핵심입니다.

## Agile 철학

### 📜 Agile Manifesto

**4가지 핵심 가치**
1. **Individuals and interactions** > Processes and tools
2. **Working software** > Comprehensive documentation  
3. **Customer collaboration** > Contract negotiation
4. **Responding to change** > Following a plan

*오른쪽도 가치가 있지만, 왼쪽을 더 중요하게 여긴다*

### 🎯 12 Principles

**주요 원칙들**
- 고객 만족을 최우선으로
- 변화를 환영하고 경쟁 우위로
- 짧은 주기로 자주 배포
- 비즈니스와 개발의 일일 협업
- 동기부여된 개인 신뢰
- 대면 소통 선호
- 작동하는 소프트웨어가 진척도
- 지속 가능한 개발 속도
- 기술 우수성과 좋은 설계
- 단순성 - 안 해도 될 일 최대화
- 자기 조직화 팀
- 정기적 회고와 개선

## Scrum Framework

### 🔄 Scrum 구조

```
Product Backlog → Sprint Planning → Sprint (1-4 weeks)
                                    ├─ Daily Scrum
                                    ├─ Development
                                    └─ Sprint Review → Sprint Retrospective
                                                     ↓
                                            Product Increment
```

### 👥 Scrum Roles

**Product Owner**
- Product Backlog 관리
- 비즈니스 가치 극대화
- 우선순위 결정
- Stakeholder 대표

**Scrum Master**
- Scrum 프로세스 가이드
- 장애물 제거
- 팀 보호와 지원
- 지속적 개선 촉진

**Development Team**
- 제품 개발 실행
- 자기 조직화
- Cross-functional
- 3-9명 권장

### 📅 Scrum Events

**Sprint Planning**
- 시간: 4시간 (2주 스프린트 기준)
- 목적: Sprint Goal과 Sprint Backlog 결정
- 산출물: Sprint 계획

**Daily Scrum**
- 시간: 15분
- 목적: 동기화와 계획 조정
- 3가지 질문:
  - 어제 무엇을 했나?
  - 오늘 무엇을 할 것인가?
  - 방해 요소가 있는가?

**Sprint Review**
- 시간: 2시간 (2주 스프린트 기준)
- 목적: Increment 검토와 피드백
- 참석: 모든 stakeholder

**Sprint Retrospective**
- 시간: 1.5시간 (2주 스프린트 기준)
- 목적: 프로세스 개선
- 형식: Start/Stop/Continue

### 📋 Scrum Artifacts

**Product Backlog**
- 제품의 모든 요구사항 목록
- 우선순위 정렬
- 지속적 refinement
- Living document

**Sprint Backlog**
- Sprint에서 완료할 항목
- Product Backlog 일부 + 실행 계획
- 팀의 약속
- Daily 업데이트

**Increment**
- Sprint의 산출물
- "Done"의 정의 충족
- 잠재적 출시 가능
- 누적되는 가치

## PM의 역할

### 🎭 Product Owner vs Product Manager

**Product Owner는 Scrum의 역할**
- Scrum 프레임워크 내에서 정의된 공식 역할
- Product Backlog의 책임자
- 개발팀과 직접 협업하는 실행 역할

**Product Manager는 조직의 역할**
- 제품의 전체 라이프사이클 책임
- 비즈니스, 기술, 사용자 경험의 교차점에서 일함
- 전략부터 실행까지 포괄적 책임

**실무에서의 관계**
- 많은 조직에서 PM이 PO 역할도 수행
- 큰 조직: PM(전략) + PO(실행) 분리
- 작은 조직: PM이 모든 역할 통합

### 📊 Backlog Management

**User Story 작성**
```
As a [user type]
I want [feature]
So that [benefit]

Acceptance Criteria:
- Given [context]
- When [action]
- Then [outcome]
```

**우선순위 기법**
- MoSCoW (Must/Should/Could/Won't)
- Value vs Effort Matrix
- RICE Score
- Kano Model

**Story Point Estimation**
- Fibonacci: 1, 2, 3, 5, 8, 13...
- T-shirt: XS, S, M, L, XL
- Planning Poker
- Relative sizing

## Sprint 실행

### 🚀 Sprint Planning

**Part 1: What**
- Sprint Goal 설정
- Backlog 항목 선택
- Capacity 고려

**Part 2: How**
- Task breakdown
- Technical approach
- Dependencies 파악

**Velocity 계산**
```
Velocity = 완료된 Story Points / Sprint
Capacity = Velocity × Focus Factor
```

### 📈 Sprint Tracking

**Burndown Chart**
- X축: 시간 (일)
- Y축: 남은 작업 (points/hours)
- Ideal line vs Actual

**Sprint Board**
```
To Do | In Progress | Review | Done
------|-------------|--------|------
Story1|   Story2    | Story3 | Story4
Task1 |   Task2     | Task3  | Task5
```

**Daily Metrics**
- Stories completed
- Blockers
- Burndown rate
- Team health

### 🏁 Sprint Closure

**Definition of Done**
- Code complete
- Unit tests passed
- Code reviewed
- Documentation updated
- Deployed to staging
- PO accepted

**Sprint Review Agenda**
1. Sprint Goal 리뷰
2. 완료 항목 데모
3. 미완료 항목 설명
4. 다음 Sprint 예고
5. 피드백 수집

## Advanced Practices

### 🔧 Scaled Agile

**SAFe (Scaled Agile Framework)**
- Program Increment (PI) Planning
- Agile Release Train (ART)
- Portfolio 관리

**Scrum of Scrums**
- 여러 팀 coordination
- Dependencies 관리
- 통합 계획

### 🎯 Kanban + Scrum

**Scrumban**
- Sprint 구조 + Kanban board
- WIP limits
- Continuous flow
- Just-in-time planning

### 📊 Metrics & KPIs

**Team Metrics**
- Velocity trend
- Sprint burndown
- Cycle time
- Lead time
- Defect rate

**Product Metrics**
- Feature adoption
- Customer satisfaction
- Business value delivered
- Time to market

## Anti-patterns

### ⚠️ 흔한 실수들

**Zombie Scrum**
- 형식만 따르고 정신 없음
- 개선 없는 반복
- 고객 피드백 무시

**Feature Factory**
- Output > Outcome
- 기능 개수에 집착
- 가치 측정 안 함

**Mini-Waterfall**
- Sprint를 단계로 나눔
- 협업 대신 handoff
- 늦은 통합

## 실전 팁

### ✨ 성공적인 Agile/Scrum

**Culture First**
- 실패 허용
- 투명성
- 지속적 학습
- 팀 임파워먼트

**Start Small**
- Pilot team으로 시작
- 점진적 확대
- 맞춤형 조정

**Tools는 나중에**
- 프로세스 먼저
- 문화 정착 후
- 도구는 보조 수단

## 체크리스트

### Sprint 준비
- [ ] Product Backlog refined
- [ ] Sprint Goal 명확
- [ ] Team capacity 확인
- [ ] Dependencies 파악

### Sprint 진행
- [ ] Daily Scrum 진행
- [ ] Burndown 추적
- [ ] Blocker 해결
- [ ] Stakeholder 소통

### Sprint 종료
- [ ] Sprint Review 준비
- [ ] Demo 준비
- [ ] Metrics 정리
- [ ] Retrospective 진행

## Tools

### 🛠 추천 도구들

**Project Management**
- Jira
- Azure DevOps
- Monday.com
- Trello

**Collaboration**
- Slack
- Miro
- Confluence
- Figma

**Metrics**
- Velocity charts
- Burndown charts
- Cumulative flow
- Control charts

## 관련 자료

- [Product Backlog 관리](../product-design/)
- [팀 협업](../../4-leadership/collaboration/)
- [의사결정 프로세스](../../4-leadership/decision-making/)

---
*Agile은 목적지가 아닌 여정입니다. 완벽한 Scrum보다 지속적으로 개선하는 팀이 더 가치 있습니다.*