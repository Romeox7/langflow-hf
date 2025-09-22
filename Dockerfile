FROM python:3.10-slim

# Create a non-root user
RUN useradd -m -u 1000 user
USER user
ENV PATH="/home/user/.local/bin:$PATH"

WORKDIR /app

# Copy requirements and install
COPY --chown=user ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Copy all files
COPY --chown=user . /app

# Expose LangFlow port
EXPOSE 7860

# Run LangFlow server
CMD ["langflow", "run", "--host", "0.0.0.0", "--port", "7860"]
