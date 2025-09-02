# MECE 기반 PM Wiki 구조 원칙 (최종)

> 이 문서는 Wiki-PM의 MECE 구조 설계 원칙을 정의합니다.  
> 최종 결정된 4단계 프로세스 구조를 반영합니다.

## 📋 최종 구조: PM 프로세스 4단계

PM의 업무를 **시간 순서와 논리적 흐름**에 따라 4단계로 구성합니다:

### 1️⃣ Discovery - 발견과 이해
**"무엇을 알아야 하는가?"** (INPUT)
- **customer-understanding**: 고객 이해, 인터뷰, 관찰, 인지심리학
- **user-research**: 사용자 리서치, 페르소나, 세그멘테이션, 사용성 테스트
- **data-analysis**: 데이터 분석, 행동 분석, 코호트 분석, 데이터 사고
- **market-competition**: 시장 조사, 경쟁 분석, 실패 사례 분석
- **frameworks**: Discovery 관련 프레임워크 (JTBD, Design Thinking, 근본원인분석)

### 2️⃣ Strategy - 전략과 계획
**"무엇을 할 것인가?"** (DECISION)
- **product-strategy**: 제품 전략, 미션/비전, 경쟁전략, 가격전략, 제품 라이프사이클
- **business-model**: 비즈니스 모델, SaaS 지표, 비즈니스 모델 캔버스
- **prioritization**: 우선순위, 데이터 기반 의사결정, 로드맵, 지표 및 목표
- **go-to-market**: GTM 전략, 시장 진입, 성장전략, 브랜딩, 마케팅전략
- **frameworks**: Strategy 관련 프레임워크 (OKR, AARRR, 시스템사고, 전략역량)

### 3️⃣ Delivery - 실행과 구현
**"어떻게 만들 것인가?"** (OUTPUT)
- **product-design**: 제품 설계, PRD, MVP, 디자인 시스템, 인터페이스 설계
- **development-process**: 개발 프로세스, 애자일, 개발조직관리, 개발 라이프사이클
- **launch-operations**: 출시 운영, 제품 런칭, 배포 관리
- **experimentation**: 실험, A/B 테스트, 가설 검증
- **frameworks**: Delivery 관련 프레임워크 (Agile/Scrum, Design Sprint, 린사고/MVP)

### 4️⃣ Leadership - 리더십과 협업
**"어떻게 함께 일할 것인가?"** (ENABLER)
- **team-culture**: 팀 문화, 리더십, 코칭, 발산적/수렴적 사고, 성장마인드, 팀워크
- **communication**: 커뮤니케이션, 피드백, 갈등해결, 문서화, Radical Candor, 심리적 안전감
- **stakeholder-management**: 이해관계자 관리, 디자이너/개발자 협업, 목표/성과 관리
- **decision-making**: 의사결정, 행동설계, 우선순위 결정, 메타인지, 자기인식, 영향력

### 0️⃣ Overview - 개인 역량 (별도 트랙)
**"PM으로서 나는 누구인가?"** (FOUNDATION)
- PM 기초
- 역량 프레임워크
- PM 마인드셋
- 커리어 패스

## 🎯 MECE 원칙 적용

### Mutually Exclusive (상호 배타성)
- 각 단계는 명확히 구분된 목적과 산출물을 가짐
- 콘텐츠는 하나의 주 위치만 가짐
- 중복을 최소화하고 참조로 연결

### Collectively Exhaustive (집합적 완전성)
- PM 업무의 전체 사이클을 포괄
- Discovery → Strategy → Delivery의 논리적 흐름
- Leadership은 전 과정을 지원하는 횡단 역량

## 📝 콘텐츠 배치 원칙

### 1. 주 위치 결정 기준

| 유형 | 배치 기준 | 예시 |
|------|-----------|------|
| Discovery | 정보 수집, 이해, 분석이 목적 | 고객 인터뷰, 데이터 수집 |
| Strategy | 의사결정, 계획, 방향 설정이 목적 | OKR 설정, 로드맵 수립 |
| Delivery | 구현, 실행, 출시가 목적 | PRD 작성, A/B 테스트 실행 |
| Leadership | 사람, 팀, 조직과 관련 | 1-on-1, 팀 빌딩 |

### 2. 경계선 콘텐츠 처리

| 콘텐츠 | 주 위치 | 참조 위치 | 결정 이유 |
|--------|---------|-----------|-----------|
| 데이터 분석 | Discovery | Strategy, Delivery | 일차적으로 이해를 위한 도구 |
| A/B 테스트 | Delivery | Discovery | 실행이 핵심, 가설은 Discovery에서 |
| MVP 정의 | Strategy | Delivery | 전략적 스코프 결정이 핵심 |
| 문서 작성 | Delivery | 모든 섹션 | PRD 등 구체적 명세가 목적 |
| 우선순위 | Strategy | Leadership | What을 결정, How는 Leadership |
| 피드백 수집 | Discovery | Delivery | 인사이트 도출 vs 운영 프로세스 |

### 3. 크로스 레퍼런스 규칙
```markdown
관련 문서: → [Strategy/로드맵과 우선순위](../2-strategy/roadmap-prioritization/)
```
- 절대 경로 대신 상대 경로 사용
- 섹션명/문서명 형식으로 명시
- 같은 내용 복사 금지, 링크로 연결

## 🔄 프레임워크 배치 전략

각 메인 카테고리는 `frameworks/` 폴더를 가지며, 해당 단계에서 주로 사용하는 프레임워크를 포함:

- **Discovery/frameworks**: JTBD, Design Thinking, 근본원인분석 (Root Cause Analysis)
- **Strategy/frameworks**: OKR, AARRR, 시스템사고, 전략역량, 디커플링전략, 정보구조
- **Delivery/frameworks**: Agile/Scrum, Design Sprint, 린사고/MVP
- **Leadership**: 각 세부 카테고리에 직접 배치 (frameworks 폴더 없음)

## 📊 MECE 준수도 체크리스트

### 월간 점검 항목
- [ ] 새로 추가된 콘텐츠의 주 위치 적절성
- [ ] 중복 콘텐츠 발생 여부
- [ ] 크로스 레퍼런스 정확성
- [ ] 누락된 PM 업무 영역

### 분기별 평가 지표
- 중복 콘텐츠 비율 < 5%
- 모든 콘텐츠가 하나의 주 폴더에 위치
- 크로스 레퍼런스 깨진 링크 0개
- 4단계 모두 균형있는 콘텐츠 분포

## 💡 실무 적용 가이드

### 신규 콘텐츠 추가 시
1. **핵심 질문 확인**: 이 콘텐츠는 어느 단계의 질문에 답하는가?
2. **목적 명확화**: 주된 목적이 무엇인가? (이해/결정/실행/협업)
3. **중복 검토**: 비슷한 내용이 이미 있는가?
4. **배치 결정**: 한 곳에만 배치하고 필요시 링크

### 애매한 경우 판단 기준
- **시간 순서**: 프로세스상 언제 주로 사용되는가?
- **주 사용자**: 누가 주로 참조하는가?
- **핵심 가치**: 어떤 가치를 제공하는가?
- **산출물**: 무엇을 만들어내는가?

## 🚀 장기 비전

### Phase 1 (현재-3개월)
- 기본 구조 완성
- 핵심 콘텐츠 배치
- MECE 원칙 정착

### Phase 2 (3-6개월)
- 콘텐츠 충실도 향상
- 사례와 템플릿 확충
- 커뮤니티 피드백 반영

### Phase 3 (6개월-1년)
- 한국 PM 표준 레퍼런스
- 지속적 업데이트 체계
- 오픈소스 기여 모델

## 📌 핵심 원칙 요약

> **"One Home, Many References"**  
> 모든 콘텐츠는 하나의 집을 가지되, 여러 곳에서 참조될 수 있다.

> **"Process over Category"**  
> 단순 분류보다 PM의 실제 업무 프로세스를 따른다.

> **"Practical over Perfect"**  
> 완벽한 MECE보다 실용적이고 직관적인 구조를 추구한다.

---

*최종 수정일: 2024.12.19*  
*이 원칙은 Wiki-PM의 구조적 일관성을 유지하는 핵심 가이드입니다.*