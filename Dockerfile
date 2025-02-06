# Usa la imagen oficial de Python
FROM python:3.9.2

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia todos los archivos de tu proyecto al contenedor
COPY . .

# Instala las dependencias desde requirements.txt
RUN pip install -r requirements.txt

# Expone el puerto 5000 para Flask
EXPOSE 5000

# Define la variable FLASK_APP para Flask
ENV FLASK_APP=app.py

# Ejecuta la aplicación cuando el contenedor inicie
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

