# Imagen base
FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar dependencias
COPY app/requirements.txt .

# Instalar dependencias
RUN pip install -r requirements.txt

# Copiar el código de la aplicación
COPY . .

# Exponer el puerto en el que correrá la aplicación
EXPOSE 80

# Comando para ejecutar la aplicación
CMD ["python", "main.py"]

