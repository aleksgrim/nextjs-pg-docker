# NEXT JS + PostgreSQL + Docker



## **Development Environment**

### **Start Development Environment**
To start the application in development mode, use this command:
docker-compose up

### **Access the Application**
- The application will be accessible at: http://localhost:3000
- PostgreSQL database will be accessible on port 5432.

### **Stop Development Environment**
To stop and remove all containers, run:
docker-compose down

---

## **Production Environment**

### **Build the Production Image**
To create a production-ready Docker image, use:
docker build --target production -t myapp:prod .

### **Run the Production Container**
To run the production container, execute:
docker run -d -p 3000:3000 myapp:prod

---

## **Docker Commands**

### **General Commands**
- List all running containers:
  docker ps

- Stop all running containers:
  docker stop $(docker ps -q)

- Remove all stopped containers:
  docker rm $(docker ps -aq)

- Remove all Docker images:
  docker rmi $(docker images -q)

### **Working with Containers**
- Rebuild Docker containers after changes in Dockerfile:
  docker-compose build

- Access the shell of a running container:
  docker exec -it <container_name> sh

- View logs from all running containers:
  docker-compose logs -f

---

## **Database Management**
The project uses PostgreSQL as the primary database.

### **Connect to the Database**
You can connect to the database using a CLI or a GUI tool like pgAdmin. Use the following credentials:
- Host: localhost (or postgres_db if inside the Docker network)
- Port: 5432
- Username: your_user
- Password: your_password
- Database: your_database

---

## **Prisma studio**
Run: npx prisma studio

