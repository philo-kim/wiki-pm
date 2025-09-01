# GitBook 다국어 설정 실행 가이드

## 📋 설정 개요

- **PM Wiki**: 한국어 기본, 영어 variant
- **Self-Help Wiki**: 영어 기본, 한국어 variant

## 🚀 GitBook에서 설정할 작업

### 1. PM Wiki 설정 (한국어 기본)

#### Step 1: Space 복제
1. GitBook에서 현재 `pm` Space 복제
2. 새 Space 이름: `pm-en` (영어 버전용)

#### Step 2: Docs Site 설정
1. PM Docs Site로 이동
2. Settings → Structure 클릭
3. 현재 연결된 Space가 한국어 버전인지 확인
4. "Add variant" 클릭
5. `pm-en` Space 선택
6. Variant 설정:
   - Name: "English"
   - Slug: `en`

#### Step 3: 기본 언어 설정
- 한국어 Space가 기본(default)으로 설정되어 있는지 확인
- 영어는 `/en` 경로로 접근

### 2. Self-Help Wiki 설정 (영어 기본)

#### Step 1: Space 복제
1. GitBook에서 현재 `self-help` Space 복제
2. 새 Space 이름: `self-help-ko` (한국어 버전용)

#### Step 2: Docs Site 설정
1. Self-Help Docs Site로 이동
2. Settings → Structure 클릭
3. 현재 연결된 Space가 영어 버전인지 확인
4. "Add variant" 클릭
5. `self-help-ko` Space 선택
6. Variant 설정:
   - Name: "한국어"
   - Slug: `ko`

#### Step 3: 기본 언어 설정
- 영어 Space가 기본(default)으로 설정되어 있는지 확인
- 한국어는 `/ko` 경로로 접근

## 📁 로컬 저장소 구조

### PM Wiki (한국어 기본)
```
wiki-pm/
├── README.md          # 한국어 홈
├── README.en.md       # 영어 홈
├── SUMMARY.md         # 한국어 목차
├── SUMMARY.en.md      # 영어 목차
├── foundations/       # 한국어 콘텐츠
├── foundations-en/    # 영어 콘텐츠
└── .gitbook.yaml
```

### Self-Help Wiki (영어 기본)
```
wiki-self-help/
├── README.md          # 영어 홈
├── README.ko.md       # 한국어 홈
├── SUMMARY.md         # 영어 목차
├── SUMMARY.ko.md      # 한국어 목차
├── content/           # 영어 콘텐츠
├── content-ko/        # 한국어 콘텐츠
└── .gitbook.yaml
```

## 🔗 최종 URL 구조

### PM Wiki
- `https://philo-2.gitbook.io/pm/` → 한국어 (기본)
- `https://philo-2.gitbook.io/pm/en` → 영어

### Self-Help Wiki
- `https://philo-2.gitbook.io/self-help/` → 영어 (기본)
- `https://philo-2.gitbook.io/self-help/ko` → 한국어

## ✅ 체크리스트

### GitBook 설정
- [ ] PM Space 복제 → `pm-en` 생성
- [ ] Self-Help Space 복제 → `self-help-ko` 생성
- [ ] PM Docs Site에 영어 variant 추가
- [ ] Self-Help Docs Site에 한국어 variant 추가
- [ ] 기본 언어 확인 (PM: 한국어, Self-Help: 영어)

### 로컬 작업
- [x] philo-wiki-hub 리다이렉트 업데이트
- [x] PM Wiki 한국어 README 생성
- [x] PM Wiki 한국어 SUMMARY 생성
- [ ] Self-Help Wiki 한국어 버전 준비
- [ ] 콘텐츠 번역 시작

### 테스트
- [ ] PM Wiki 한국어 접근 테스트
- [ ] PM Wiki 영어 variant 접근 테스트
- [ ] Self-Help Wiki 영어 접근 테스트
- [ ] Self-Help Wiki 한국어 variant 접근 테스트
- [ ] 언어 전환 UI 테스트

## 🎯 다음 단계

1. GitBook에서 Space 복제 및 Variant 설정
2. 각 언어별 콘텐츠 번역/작성
3. Git 저장소 동기화 설정
4. CI/CD 파이프라인 구축 (선택사항)

## 📝 참고사항

- Variant slug는 URL 경로에 사용되므로 짧고 명확하게 설정
- 각 Space는 독립적으로 관리되므로 Git 동기화 설정 필요
- 번역 시 용어 일관성을 위해 Glossary 관리 권장