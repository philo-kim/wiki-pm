#!/bin/bash

# Git 초기화 및 첫 커밋 스크립트

echo "🚀 Initializing Git repository for pmwiki..."

# Git 초기화
git init

# 기본 브랜치를 main으로 설정
git branch -M main

# 모든 파일 추가
git add .

# 첫 커밋
git commit -m "Initial commit: PM Wiki structure with 30+ pages

- Complete wiki structure with 7 main sections
- 30+ placeholder pages ready for content
- Navigation system (SUMMARY.md)
- README, CONTRIBUTING, and .gitignore files
- All pages include learning objectives and content outlines
- Ready for GitBook deployment"

echo "✅ Git repository initialized successfully!"
echo ""
echo "📝 Next steps:"
echo "1. Create a repository on GitHub named 'pmwiki-docs'"
echo "2. Run: git remote add origin https://github.com/YOUR_USERNAME/pmwiki-docs.git"
echo "3. Run: git push -u origin main"
echo "4. Connect GitBook to this GitHub repository"
echo ""
echo "📊 Repository Statistics:"
echo "- Total files: $(find . -type f -name '*.md' | wc -l) markdown files"
echo "- Total directories: $(find . -type d | wc -l) directories"
echo "- Total size: $(du -sh . | cut -f1)"
