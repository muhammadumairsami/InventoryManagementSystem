# base image
FROM python:3.12-slim

# setup working directory in container
WORKDIR /InventoryManagementSystem

# copy all files to inventory_management_system directory
COPY . /InventoryManagementSystem/

RUN pip install poetry

RUN poetry install

# command to run on container start
CMD ["poetry", "run", "python", "inventoryManagementSystem/main.py"]
