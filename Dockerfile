# 1. 파이썬 베이스 이미지 선택
FROM python:3.10-slim

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. 필요한 파일 복사
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# 4. Streamlit을 위한 포트 설정
EXPOSE 8501

# 5. 프로그램 실행 명령 (Streamlit 실행 방식으로 변경)
# --server.address=0.0.0.0 설정이 있어야 외부 접속이 가능합니다.
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
