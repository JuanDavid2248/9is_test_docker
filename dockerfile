# imagen
FROM python:3.9

# establecer el directorio de trabajo de contenedor 
WORKDIR /app

COPY requirements.txt requirements.txt
COPY app.py app.py
RUN pip install --no-cache-dir -r requirements.txt

# habilita para ver en terminal lo que se esta dnado en print 
ENV PYTHONUNBUFFERED=1

#puerto que se va a exponer 
EXPOSE 5000

#comando para ejecutar
CMD ["python", "app.py"]