# Utiliza la imagen base de Python 3.11.3
FROM python:3.11.3

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo requirements.txt al contenedor
COPY requirements.txt .

# Instala las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de los archivos al contenedor
COPY . .

# Expone el puerto 8000 para acceder a la aplicación
EXPOSE 8000

# Define el comando para ejecutar la aplicación
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
