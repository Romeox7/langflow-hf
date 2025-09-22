import streamlit as st
from langflow.interface import run_server

st.title("LangFlow API - Watson Agent")

st.write("This is the LangFlow backend running on Hugging Face Spaces.")

# Button to start LangFlow server (only for dev/test)
if st.button("Start LangFlow Server"):
    run_server(host="0.0.0.0", port=7860)
