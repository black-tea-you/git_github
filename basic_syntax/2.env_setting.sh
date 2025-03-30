#github 인증방법 2가지
#1.oauth 인증방식(제3자인증-웹로그인)
#2.pat token 인증 방식:github에서 직접 보안키 발급
#발급한 키를 키체인(자격증명)에 등록

#git프로젝트 생성 방법 2가지
#방법1.github에서 진행중인 원격 repo를 clone
#방법2. 로컬에서부터 이미 진행중인 프로젝트를 github에 업로드
#해당 프로젝트 위치에 .git폴더(repo주소, 사용자 정보 등)가 생성

git init
#원격지 주소를 생성 및 추가
git remote add origin 레포주소
#원격지 주소 삭제
git remote remove origin
#원격지 주소 변경
git remote set-url origin 레포주소
#git 설정 정보 조회
git config --list

#타인레포 clone받는 방법 2가지
#1.커밋이력 그대로 가져오기
git clone 타인레포주소
#해당 폴더로 이동 후 github 레포주소 변경
git remote set-url origin 나의레포주소
#commit하지 않은 이유->다른 사람의 commit이력이 모두 들어가 있기 때문에
git push origin main

#2.커밋이력 없이 레포 가져오기
git clone 타인레포주소
# 해당 폴더 안으로 이동후 .git 폴더 삭제
git init
git remote add origin 나의레포주소
git add .
#commit 이력이 하나도 없기 때문에에
git commit -m "first"
git push origin master