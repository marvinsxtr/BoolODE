FROM --platform=$BUILDPLATFORM ubuntu:22.04

# Environment variables
ENV UV_PROJECT_ENVIRONMENT="/venv"
ENV UV_PYTHON_INSTALL_DIR="/python"
ENV UV_COMPILE_BYTECODE=1
ENV UV_PYTHON=python3.7
ENV PATH="$UV_PROJECT_ENVIRONMENT/bin:$PATH"

# Install uv
COPY --from=ghcr.io/astral-sh/uv:0.5.4@sha256:49934a7a2d0a2ddfda9ddb566d6ac2449cdf31c7ebfb56fe599e04057fddca58 /uv /usr/local/bin/uv

# Environment
ADD . /app
ENV PYTHONPATH=$PYTHONPATH:/app
WORKDIR /app
RUN uv sync --frozen

# Entrypoint
ENTRYPOINT ["uv", "run", "-m", "BoolODE"]