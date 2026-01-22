import streamlit as st

st.title(" EC2 Streamlit 배포 성공!")
st.write("GitHub Actions를 통해 자동 배포된 화면입니다.")
st.write("확인")
st.write("반가워요!")

st.sidebar.header("설정")
name = st.text_input("이름을 입력하세요", "사용자")
st.success(f"{name}님, 환영합니다!")