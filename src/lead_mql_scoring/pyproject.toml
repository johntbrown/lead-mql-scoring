[build-system]
requires = ["setuptools>=69", "wheel"]
build-backend = "setuptools.build_meta"

[project]
name = "lead-mql-scoring"
version = "0.1.0"
description = "Score leads as MQL and break down by UTM source and creation date."
readme = "README_PYPI.md"
requires-python = ">=3.9"
license = { text = "MIT" }
authors = [
  { name = "Your Name", email = "you@example.com" }
]
keywords = ["crm", "marketing", "mql", "scoring", "analytics"]
classifiers = [
  "License :: OSI Approved :: MIT License",
  "Programming Language :: Python :: 3",
  "Programming Language :: Python :: 3 :: Only",
  "Programming Language :: Python :: 3.9",
  "Programming Language :: Python :: 3.10",
  "Programming Language :: Python :: 3.11",
  "Programming Language :: Python :: 3.12",
  "Topic :: Scientific/Engineering :: Information Analysis",
]

dependencies = [
  "pandas>=2.0,<3.0"
]

[project.urls]
Homepage = "https://github.com/YOURUSERNAME/lead-mql-scoring"
Repository = "https://github.com/YOURUSERNAME/lead-mql-scoring"
Issues = "https://github.com/YOURUSERNAME/lead-mql-scoring/issues"

[project.scripts]
lead-mql-score = "lead_mql_scoring.__main__:main"

[tool.setuptools]
package-dir = {"" = "src"}

[tool.setuptools.packages.find]
where = ["src"]
