FROM python:3.10-slim

WORKDIR /app

# Install LangFlow and PDF/Image libraries
RUN pip install langflow PyPDF2 pytesseract

# Expose LangFlow port
EXPOSE 7860

# Run LangFlow server
CMD ["langflow", "run", "--host", "0.0.0.0", "--port", "7860"]
