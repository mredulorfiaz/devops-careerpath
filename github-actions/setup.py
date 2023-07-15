from setuptools import setup, find_packages

with open('requirements.txt') as f:
    install_requires = f.read().splitlines()

setup(
    name='test-flask-project',
    version='1.0.0',
    description='A description of test Flask project',
    packages=find_packages(),
    install_requires=install_requires,
)
