# Dockerized Static Website Deployment on AWS EC2

## Overview

This project demonstrates how to deploy a static website on an AWS EC2 instance using Docker and GitHub. The application is containerized using Docker and hosted on an Ubuntu EC2 server.

## Technologies Used

* AWS EC2
* Docker
* Git
* GitHub
* Nginx
* HTML

---

## Project Architecture

GitHub Repository
↓
AWS EC2 Instance
↓
Docker Image
↓
Docker Container
↓
Static Website

---

## Project Structure

```text
terraform-docker-project/

├── app/
│   ├── Dockerfile
│   └── index.html
│
└── README.md
```

---

## Step 1: Clone Repository

```bash
git clone https://github.com/rahil-cloud/terraform-docker-project.git

cd terraform-docker-project/app
```

---

## Step 2: Build Docker Image

```bash
sudo docker build -t website .
```

---

## Step 3: Run Docker Container

```bash
sudo docker run -d -p 80:80 website
```

---

## Step 4: Verify Running Container

```bash
sudo docker ps
```

Expected Output:

```text
CONTAINER ID   IMAGE     STATUS
xxxxxxxxxxxx   website   Up
```

---

## Step 5: Access Website

Open your EC2 Public IP in a browser:

```text
http://<EC2-PUBLIC-IP>
```

---

## Docker Commands Used

Build Image:

```bash
docker build -t website .
```

Run Container:

```bash
docker run -d -p 80:80 website
```

List Running Containers:

```bash
docker ps
```

List All Containers:

```bash
docker ps -a
```

List Images:

```bash
docker images
```

Stop Container:

```bash
docker stop <container-id>
```

Remove Container:

```bash
docker rm <container-id>
```

---

## Learning Outcomes

* Understanding Docker containerization
* Deploying applications on AWS EC2
* Using GitHub for source code management
* Building Docker images
* Running and managing Docker containers
* Hosting web applications in the cloud

---

## Author

Rahil

GitHub: https://github.com/rahil-cloud

