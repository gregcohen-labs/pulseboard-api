.PHONY: help install test lint clean

help:
	@echo "Available commands:"
	@echo "  make install  - Install dependencies (uses uv)"
	@echo "  make test     - Run unit tests"
	@echo "  make lint     - Run linter"
	@echo "  make clean    - Clean up generated files"

install:
	uv sync

test:
	PYTHONPATH=. uv run pytest -v

lint:
	uv run ruff check .

clean:
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name "*.pyc" -delete 2>/dev/null || true
	rm -rf .pytest_cache .ruff_cache
