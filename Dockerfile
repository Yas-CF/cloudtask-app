FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar dependencias
COPY app/requirements.txt .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código de la aplicación
COPY app/* .

# Exponer el puerto 80
EXPOSE 80

# Comando para ejecutar la aplicación
CMD ["python", "main.py"]
