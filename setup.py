from setuptools import setup, find_packages


setup(
    name="BoolODE",
    version="0.1",
    packages=find_packages(),
    install_requires=[
        "setuptools==59.8.0",
        "scipy==1.2.1",
        "matplotlib==3.4.3",
        "numpy==1.19.5",
        "tqdm==4.31.1",
        "seaborn==0.9.0",
        "pandas==0.25.3",
        "scikit-learn==1.0.2"
    ]
)