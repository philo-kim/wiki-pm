# GitBook 다국어 설정 가이드

## 🌐 Overview

이 문서는 wiki-pm과 wiki-self-help 프로젝트의 다국어 지원 설정 방법을 설명합니다.

## 📚 GitBook Variants 활용 전략

### 1. Space 구조 설계

```
GitBook Organization
├── wiki-pm-en (English Space)
├── wiki-pm-ko (한국어 Space)
├── wiki-self-help-en (English Space)
└── wiki-self-help-ko (한국어 Space)
```

### 2. Docs Site 구성

**PM Wiki Site**
- Default: wiki-pm-en (English)
- Variant: wiki-pm-ko (한국어)

**Self-Help Wiki Site**
- Default: wiki-self-help-en (English)
- Variant: wiki-self-help-ko (한국어)

## 🛠 구현 단계

### Step 1: Space 복제
1. GitBook에서 현재 Space를 복제
2. 명명 규칙: `{project-name}-{language-code}`
   - 예: `wiki-pm-en`, `wiki-pm-ko`

### Step 2: 콘텐츠 번역
- GitBook AI 번역 기능 활용
- DeepL API 연동
- 수동 번역 및 검수

### Step 3: Docs Site 설정
1. GitBook Dashboard → Docs Sites → New Site
2. Settings → Structure
3. "Link existing space"로 기본 언어 Space 연결
4. "Add variant"로 다른 언어 Space 추가

### Step 4: URL 구조
```
https://your-domain.com/ (기본 - 영어)
https://your-domain.com/ko/ (한국어 variant)
```

## 📁 로컬 Repository 관리

### 옵션 1: 단일 Repo + 브랜치
```bash
# 메인 브랜치 (영어)
git checkout main

# 한국어 브랜치
git checkout -b ko

# 동기화 스크립트
git checkout ko
git merge main --no-ff
```

### 옵션 2: 별도 Repository
```bash
# 영어 버전
git clone https://github.com/user/wiki-pm-en

# 한국어 버전
git clone https://github.com/user/wiki-pm-ko
```

### 옵션 3: 단일 Repo + 디렉토리 (추천)
```
wiki-pm/
├── .gitbook.yaml
├── en/
│   ├── README.md
│   ├── SUMMARY.md
│   └── content/
└── ko/
    ├── README.md
    ├── SUMMARY.md
    └── content/
```

## 🔄 동기화 전략

### GitHub Actions 활용
```yaml
name: Sync Translations
on:
  push:
    branches: [main]
    paths:
      - 'en/**'

jobs:
  sync:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Detect changes
        run: |
          # 변경된 파일 감지
          # 번역 필요 파일 마킹
      - name: Create PR for translation
        run: |
          # ko 브랜치에 PR 생성
```

## 🎨 커스터마이징

### 언어 선택기 스타일
GitBook Site Settings에서 커스터마이징 가능:
- Customization → Theme
- 언어 드롭다운 위치 및 스타일 조정

### 언어별 네비게이션
각 Space의 SUMMARY.md를 언어에 맞게 최적화

## 📊 관리 도구

### Translation Status Dashboard
```markdown
| Page | EN | KO | Last Updated |
|------|----|----|--------------|
| What is PM | ✅ | 🔄 | 2025-01-26 |
| PM Mindset | ✅ | ⏳ | 2025-01-25 |
| Core Skills | ✅ | ⏳ | 2025-01-24 |
```

### 번역 우선순위
1. 🔴 High: 핵심 개념 페이지
2. 🟡 Medium: 방법론 및 도구
3. 🟢 Low: 사례 연구 및 템플릿

## 🚀 Best Practices

1. **일관성 유지**
   - 용어집(Glossary) 관리
   - 스타일 가이드 준수

2. **점진적 번역**
   - 핵심 콘텐츠부터 시작
   - 사용자 피드백 반영

3. **자동화 활용**
   - CI/CD 파이프라인 구축
   - 번역 메모리 활용

4. **품질 관리**
   - Native speaker 검수
   - 정기적인 업데이트 체크

## 📝 Next Steps

- [ ] GitBook 계정에서 Space 복제
- [ ] 번역 도구 선정 및 설정
- [ ] CI/CD 파이프라인 구축
- [ ] 첫 번째 페이지 번역 테스트
- [ ] Docs Site 생성 및 Variant 연결

## 🔗 참고 자료

- [GitBook Variants Documentation](https://docs.gitbook.com/publishing-documentation/site-structure/variants)
- [GitBook Localization Guide](https://docs.gitbook.com/guides/product-guides/localize-your-docs-with-variants-in-gitbook)
- [GitHub Actions for Translation](https://gitbook.com/docs/guides/product-guides/use-github-actions-to-translate-gitbook-pages)
