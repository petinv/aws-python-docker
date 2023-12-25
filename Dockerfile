# Используем базовый образ с Python
FROM python:3.8

# Устанавливаем зависимости
WORKDIR /app
COPY requirements.txt .

# Создаем виртуальное окружение и устанавливаем зависимости
RUN python3 -m venv venv && \
    . venv/bin/activate && \
    pip install --no-cache-dir -r requirements.txt

# Копируем код в контейнер
COPY . .

# Команда для запуска приложения
CMD ["python", "app.py"]
