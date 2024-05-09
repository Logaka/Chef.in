# Chef.In Project

This project is built using Java Spring Boot for the backend and Thymeleaf for the frontend.

To get started with Chef.In, follow these steps:

### Prerequisites

- Java Development Kit (JDK) 
- Maven 3 -ver (3.9.2)
- PostgreSQL


```bash```
git clone https://github.com/Logaka/Chef.in.git
cd Chef.in
Configure the database settings in application.properties file.
## Database config and values need to configure manually
   values are postrgres_public_variable.sql file 
    or if it not work in recipe image field exists images that are set to db
    (image.name == receipt.name)
    Also need to set own variables in application.properties to the Spring Mail Sender

    
Usage
Access the web application by navigating to http://localhost:8080 in your web browser.
Sign up or log in to create and share recipes.
Explore recipes, add ingredients, and follow cooking guides.
API Usage
The application also provides a RESTful API for retrieving recipe data.
API endpoints are accessible at http://localhost:8080/api/receipts.
Use tools like cURL or Postman to interact with the API.
