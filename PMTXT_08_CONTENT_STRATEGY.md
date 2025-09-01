# PMTXT 8과(데이터 분석 기본) 콘텐츠 배치 전략

## 📋 전체 배치 구조

### Discovery 단계 (주요 배치)
```
1-discovery/
├── data-analysis/              # 데이터 분석 (08_01, 08_05)
│   ├── data-thinking.md        # 데이터 사고의 기초
│   ├── cohort-analysis.md      # 코호트 분석과 리텐션
│   └── root-cause-analysis.md  # 근본 원인 분석
├── user-research/              # 사용자 리서치 (08_10)
│   └── qualitative-data.md     # 정성적 데이터 수집과 분석
├── market-research/            # 시장 조사 (08_06, 08_07)
│   └── competitor-metrics.md   # 경쟁사 지표 벤치마킹
└── frameworks/                 # Discovery 프레임워크
    ├── eda-framework.md        # 탐색적 데이터 분석
    └── segmentation.md         # 사용자 세그멘테이션
```

### Strategy 단계 (지표 설계와 전략)
```
2-strategy/
├── goals-metrics/              # 목표와 지표 (08_02, 08_03)
│   ├── north-star-metric.md   # 북극성 지표 설계
│   ├── kpi-framework.md       # KPI 체계 구축
│   ├── okr-metrics.md        # OKR과 지표 연계
│   └── heart-framework.md     # Google HEART 프레임워크
├── business-model/            # 비즈니스 모델 (08_06, 08_07)
│   ├── saas-metrics.md       # SaaS 핵심 지표
│   ├── marketplace-metrics.md # 마켓플레이스 지표
│   └── platform-metrics.md    # 플랫폼 비즈니스 지표
└── frameworks/                # Strategy 프레임워크
    ├── aarrr-framework.md     # 해적 지표 (AARRR)
    └── leading-lagging.md     # 선행/후행 지표
```

### Delivery 단계 (실행과 실험)
```
3-delivery/
├── experimentation/           # 실험과 테스트 (08_09)
│   ├── ab-testing-guide.md   # A/B 테스트 가이드
│   ├── mvt-testing.md        # 다변량 테스트
│   ├── experiment-design.md  # 실험 설계와 통계
│   └── testing-pitfalls.md   # 테스트 함정과 해결책
├── product-operations/        # 제품 운영 (08_03, 08_04)
│   ├── funnel-optimization.md # 퍼널 분석과 최적화
│   ├── monitoring-dashboard.md # 모니터링 대시보드
│   └── data-pipeline.md       # 데이터 파이프라인
├── launch-deployment/         # 출시와 배포 (08_09)
│   └── rollout-metrics.md    # 단계적 출시 지표
└── frameworks/               # Delivery 프레임워크
    ├── growth-loop.md        # 성장 루프 설계
    └── hook-model.md         # 습관 형성 모델
```

### Leadership 단계 (의사결정과 문화)
```
4-leadership/
├── decision-making/           # 의사결정 (08_10)
│   ├── data-informed-decisions.md # 데이터 기반 의사결정
│   ├── decision-bias.md      # 의사결정 편향 극복
│   └── stakeholder-reporting.md # 이해관계자 리포팅
├── team-culture/             # 팀 문화 (08_10)
│   ├── data-culture.md      # 데이터 문화 구축
│   ├── experimentation-culture.md # 실험 문화 정착
│   └── data-democratization.md # 데이터 민주화
├── communication/            # 커뮤니케이션 (08_10)
│   └── data-storytelling.md # 데이터 스토리텔링
└── frameworks/              # Leadership 프레임워크
    └── data-governance.md   # 데이터 거버넌스
```

### Resources (도구와 템플릿)
```
resources/
├── templates/
│   ├── metrics-dictionary.md   # 지표 사전 템플릿
│   ├── experiment-brief.md     # 실험 계획서 템플릿
│   ├── dashboard-template.md   # 대시보드 설계 템플릿
│   └── analysis-report.md      # 분석 리포트 템플릿
└── tools/
    ├── analytics-tools.md       # 분석 도구 (GA4, Mixpanel, Amplitude)
    ├── sql-guide.md            # SQL 실무 가이드
    ├── visualization-tools.md  # 시각화 도구 (Tableau, Looker)
    └── testing-tools.md        # A/B 테스트 도구
```

### Special Topics (특별 주제)
```
special-topics/
├── ai-pm/
│   └── ai-data-analysis.md    # AI 활용 데이터 분석
└── growth-pm/
    └── growth-metrics.md       # 그로스 PM 지표 전략
```

## 📚 세부 콘텐츠 매핑

### 1. Data Analysis Foundation (데이터 분석 기초)

**📁 data-thinking.md**
- 데이터 사고란 무엇인가
- 정량적 vs 정성적 데이터
- 상관관계 vs 인과관계
- 확증 편향 극복하기
- PM을 위한 통계 기초
- 실무 체크리스트

**📁 cohort-analysis.md**
- 코호트 분석의 이해
- 시간/행동/속성 기반 코호트
- 리텐션 분석 (Classic, Rolling, Unbounded)
- 리텐션 커브 패턴과 해석
- 수익 코호트와 LTV 예측
- 실제 분석 템플릿

**📁 root-cause-analysis.md**
- 5 Whys 기법
- Fishbone Diagram
- 데이터 드릴다운
- 이상 탐지와 알림
- 문제 해결 프레임워크

### 2. Metrics Design (지표 설계)

**📁 north-star-metric.md**
- North Star Metric 정의
- 선정 기준과 프로세스
- 기업별 사례 (Facebook, Airbnb, Spotify)
- Input Metrics 체계
- 지표 트리 구성
- 측정과 개선 방법

**📁 heart-framework.md**
- Happiness (만족도) 측정
- Engagement (참여도) 분석
- Adoption (채택률) 추적
- Retention (유지율) 관리
- Task Success (작업 성공률)
- 통합 대시보드 구성

**📁 aarrr-framework.md**
- Acquisition (획득) 최적화
- Activation (활성화) 전략
- Retention (유지) 메커니즘
- Revenue (수익) 극대화
- Referral (추천) 시스템
- 단계별 전환율 개선

### 3. Business Model Metrics (비즈니스 모델별 지표)

**📁 saas-metrics.md**
- MRR/ARR 계산과 성장
- Churn Rate 분석 (자발적/비자발적)
- CAC/LTV Ratio 최적화
- Net Revenue Retention
- Product Qualified Lead (PQL)
- Health Score 시스템

**📁 marketplace-metrics.md**
- GMV와 Take Rate
- 양면 시장 균형 지표
- 유동성 지표 (Liquidity)
- 매칭 효율성
- Trust & Safety 지표
- 네트워크 효과 측정

**📁 platform-metrics.md**
- 콘텐츠 플랫폼 지표 (YouTube, TikTok형)
- 소셜 미디어 참여 지표
- UGC 플랫폼 1-9-90 규칙
- 커뮤니티 건강도
- 바이럴 계수 (K-factor)
- Cold Start 극복 전략

### 4. Funnel & User Journey (퍼널과 사용자 여정)

**📁 funnel-optimization.md**
- 퍼널 설계 원칙
- 마이크로 전환 최적화
- 세그먼트별 퍼널 분석
- Drop-off 분석과 개선
- 멀티채널 퍼널
- 실시간 퍼널 모니터링

**📁 user-journey-analytics.md**
- User Path 분석
- Sankey Diagram 활용
- 크리티컬 패스 식별
- 행동 시퀀스 분석
- 크로스 디바이스 추적

### 5. Experimentation (실험)

**📁 ab-testing-guide.md**
- 가설 수립 방법
- 샘플 사이즈 계산
- 통계적 유의성 vs 실무적 유의성
- 실험 기간 설정
- SRM (Sample Ratio Mismatch) 해결
- 실험 로그와 문서화

**📁 experiment-design.md**
- 실험 설계 원칙
- 무작위 할당 방법
- 지표 선정 (Primary, Secondary, Guardrail)
- Multi-Armed Bandit
- 순차적 테스트
- 베이지안 접근법

**📁 testing-pitfalls.md**
- 다중 비교 문제
- 신규 효과 (Novelty Effect)
- 생존자 편향
- 심슨의 역설
- Peeking Problem
- 해결 방법과 체크리스트

### 6. Analytics Tools (분석 도구)

**📁 sql-guide.md**
- PM을 위한 필수 SQL
- 집계 함수와 GROUP BY
- JOIN 연산 마스터
- 윈도우 함수 활용
- 코호트 분석 쿼리
- 성능 최적화 팁

**📁 analytics-tools.md**
- Google Analytics 4 설정과 활용
- Mixpanel 이벤트 추적
- Amplitude 행동 분석
- Hotjar/FullStory 정성 분석
- 도구 선택 가이드
- 통합 전략

**📁 visualization-best-practices.md**
- 차트 선택 가이드
- 대시보드 설계 원칙
- 색상과 레이아웃
- 인터랙티브 시각화
- 모바일 최적화
- 접근성 고려사항

### 7. Data-Driven Decision Making (데이터 기반 의사결정)

**📁 data-informed-decisions.md**
- Data-Driven vs Data-Informed
- 의사결정 프레임워크
- 데이터 + 직관 균형
- 불확실성 관리
- 시나리오 분석
- 의사결정 문서화

**📁 data-storytelling.md**
- 데이터 내러티브 구성
- 피라미드 원칙
- 시각화 스토리텔링
- 청중별 커뮤니케이션
- 액션 유도 방법
- 프레젠테이션 팁

**📁 decision-bias.md**
- 확증 편향 극복
- 생존자 편향 인식
- 최신성 편향 관리
- 앵커링 효과 방지
- 집단 사고 예방
- 편향 체크리스트

### 8. Data Culture (데이터 문화)

**📁 data-democratization.md**
- 셀프서비스 분석 환경
- 데이터 리터러시 교육
- 데이터 카탈로그 구축
- 메타데이터 관리
- 접근 권한 설계
- 협업 프로세스

**📁 experimentation-culture.md**
- 실험 인프라 구축
- 실패 용인 문화
- 학습 공유 시스템
- 실험 우선순위
- 속도와 품질 균형
- 성공 사례 확산

**📁 data-governance.md**
- 데이터 품질 6가지 차원
- 개인정보 보호 (GDPR, KISA)
- 데이터 수집 윤리
- 보안과 접근 관리
- 감사 추적
- 규정 준수

## 🔄 콘텐츠 변환 원칙

### 1. 이론 → 실무 도구
- 통계 이론 최소화, 실무 적용 중심
- 즉시 사용 가능한 쿼리와 템플릿
- 단계별 실행 가이드
- 실제 케이스 스터디

### 2. 글로벌 → 한국 맥락
- 국내 스타트업 지표 사례
- 한국 시장 특성 반영
- 네이버, 카카오, 쿠팡 등 사례
- 국내 규제 환경 고려

### 3. 복잡함 → 단순함
- 복잡한 통계를 쉽게 설명
- 시각적 예시 다수 활용
- 체크리스트와 의사결정 트리
- FAQ 형식 활용

## 📊 우선순위

### 즉시 작성 (Critical)
1. `north-star-metric.md` - 북극성 지표 설계
2. `ab-testing-guide.md` - A/B 테스트 가이드
3. `funnel-optimization.md` - 퍼널 최적화

### 단기 작성 (1-2주)
1. `aarrr-framework.md` - AARRR 프레임워크
2. `cohort-analysis.md` - 코호트 분석
3. `sql-guide.md` - SQL 실무 가이드

### 중기 작성 (3-4주)
1. `data-storytelling.md` - 데이터 스토리텔링
2. `saas-metrics.md` - SaaS 지표
3. `experimentation-culture.md` - 실험 문화

## 💡 핵심 차별화 포인트

### 1. PM 특화 데이터 분석
- 데이터 분석가가 아닌 PM 관점
- 제품 의사결정에 필요한 분석만
- 빠른 인사이트 도출 방법
- 데이터팀과의 협업 가이드

### 2. 실전 SQL과 도구
- 복사해서 바로 쓰는 SQL 쿼리
- 도구별 설정 가이드
- 실제 대시보드 예시
- 트러블슈팅 가이드

### 3. 한국형 사례 중심
- 국내 서비스 지표 벤치마크
- 한국 사용자 행동 패턴
- 국내 규제 대응 방법
- K-스타트업 성공 사례

## 🎯 측정 지표

### 콘텐츠 활용도
- SQL 쿼리 복사 횟수
- 템플릿 다운로드 수
- 도구 설정 가이드 조회수

### 학습 효과
- 데이터 분석 역량 향상도
- A/B 테스트 성공률
- 의사결정 속도 개선

### 비즈니스 임팩트
- 데이터 기반 결정 비율
- 실험 주도 개선 건수
- 지표 개선 성과

## 📝 작성 가이드라인

### 구조
```markdown
# [제목]

## 🎯 5분 안에 시작하기
- 최소 설정으로 바로 시작
- 첫 번째 분석 실행
- 빠른 인사이트 도출

## 📊 핵심 개념
- 꼭 알아야 할 개념 3-5개
- 시각적 설명
- 실무 예시

## 🛠️ 단계별 실습
### Step 1: [데이터 준비]
- SQL 쿼리
- 데이터 정제
- 품질 체크

### Step 2: [분석 실행]
- 분석 방법
- 도구 활용
- 결과 해석

### Step 3: [인사이트 도출]
- 패턴 발견
- 가설 검증
- 액션 아이템

## 💡 실전 팁
- 자주 하는 실수
- 효율적인 방법
- 프로 팁

## 📋 체크리스트
- [ ] 데이터 품질 확인
- [ ] 분석 목적 명확화
- [ ] 결과 검증
- [ ] 액션 플랜 수립

## 🔗 다음 단계
- 심화 학습
- 관련 도구
- 추가 자료
```

### 톤 & 매너
- 어려운 통계를 쉽게
- 실무자 눈높이
- 격려하는 어조
- 한국 PM 맥락

## 🚀 실행 계획

### Week 1
- Discovery 카테고리 데이터 분석 섹션 구성
- 북극성 지표, A/B 테스트 가이드 작성
- SQL 기초 쿼리 모음 제작

### Week 2
- AARRR, 코호트 분석 문서 완성
- 퍼널 최적화 가이드 작성
- 분석 도구 설정 가이드

### Week 3-4
- 비즈니스 모델별 지표 정리
- 데이터 스토리텔링 가이드
- 실험 문화 구축 방법론

## 📌 핵심 메시지

> "데이터는 PM의 나침반입니다.
> 하지만 나침반만 보고 걷다가는 돌부리에 걸려 넘어집니다.
> 데이터와 직관, 고객 공감을 균형있게 활용하는 
> Data-Informed PM이 되어야 합니다."

---
*작성일: 2024.12.19*
*작성자: PM Wiki Project*