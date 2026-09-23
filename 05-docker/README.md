# 🐍 Flask + 🔴 Redis Multi-Container Application

A simple **multi-container web application** built with **Python Flask, Redis, Docker, and Docker Compose**. 🚀

This project demonstrates how a Flask web application can communicate with a Redis database running in a separate container to store and increment a website visit counter.

---

## 🌐 Application

The Flask application provides two routes:

### 🏠 `/`

Displays a welcome message.


Welcome to the BEST online counter!
```

### 🔢 `/count`

Increments a visit counter stored in Redis and displays the current count.

This is a counter for how many times someone has visited this site: 5
```

Refreshing the page increments the counter:

👤 Visit 1 → 1
👤 Visit 2 → 2
👤 Visit 3 → 3
```

---

## 🛠️ Technologies Used

| Technology            | Purpose                                        |
| --------------------- | ---------------------------------------------- |
| 🐍 **Python**         | Application programming language               |
| 🌶️ **Flask**         | Web application framework                      |
| 🔴 **Redis**          | Key-value database for storing the visit count |
| 🐳 **Docker**         | Containerisation                               |
| 🐙 **Docker Compose** | Managing multiple containers                   |

---


## ⚙️ How It Works

The application consists of two containers:

```text
                 🐳 Docker Compose
                       │
          ┌────────────┴────────────┐
          │                         │
          ▼                         ▼
   🌐 Flask Web App            🔴 Redis Database
      Container                  Container
          │                         │
          │     Redis connection    │
          └────────────────────────►│
                                    │
                              🔢 visit_count
```

When a user visits `/count`, Flask sends an `INCR` command to Redis:

```python
visit_count = r.incr("visit_count")
```

Redis increments the value stored under the `visit_count` key and returns the updated value.

Flask then displays the updated count to the user. 🎉

---

## 🔗 Flask → Redis Connection

The Flask application connects to Redis using the Docker Compose service name:

```python
r = redis.Redis(
    host="redis",
    port=6379,
    decode_responses=True
)
```

The hostname `redis` refers to the Redis service defined in `docker-compose.yml`.

This allows the two containers to communicate over Docker's internal network. 🌐

---

## 🚀 Running the Application

### 📋 Prerequisites

Make sure you have installed:

* 🐳 Docker
* 🐙 Docker Compose

### 1️⃣ Clone the Repository

```bash
git clone <your-repository-url>
cd <your-repository-directory>
```

### 2️⃣ Build and Start the Containers

```bash
docker compose up --build
```

Docker Compose will build and start both the Flask and Redis containers. 🚀

### 3️⃣ Access the Welcome Page

Open your browser and navigate to:

```text
http://localhost:5005
```

You should see:

```text
Welcome to the BEST online counter!
```

### 4️⃣ Test the Visit Counter

Navigate to:

```text
http://localhost:5005/count
```

You should see:

```text
This is a counter for how many times someone has visited this site: 1
```

Refresh the page 🔄 and the number should increase:

```text
1 → 2 → 3 → 4 → 5 → ...
```

---



## ✅ The project satisfies the following requirements:

* [x] 🐍 Flask web application created
* [x] 🏠 `/` route displaying a welcome message
* [x] 🔢 `/count` route created
* [x] 🔴 Redis used as a key-value store
* [x] 💾 Visit count stored in Redis
* [x] ➕ Visit count incremented using Redis
* [x] 🐳 Flask application containerised with Docker
* [x] 🔴 Redis containerised
* [x] 🐙 Docker Compose used to manage multiple containers
* [x] 🔗 Flask and Redis containers communicate over a Docker network

---
