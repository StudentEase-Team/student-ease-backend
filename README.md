# StudentEase Backend Server

![logolight](https://github.com/user-attachments/assets/be222b69-e9b3-4777-bb4f-73f8310af3b9)


StudentEase Backend Server is a Java Spring application designed to provide API services for the StudentEase frontend application. This application enables database connections, user authentication, email sending, and other necessary backend functionalities.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)

## Features

- **Database Connection:** The application connects to a PostgreSQL database using JDBC.
- **User Authentication:** Supports user authentication using JWT tokens.
- **Email Sending:** Integration with an SMTP server for sending email notifications.
- **REST API:** Implementation of RESTful services for communication with the front-end application.

## Prerequisites

- **Java 17+** should be installed on your system.
- **Maven** should be installed for managing dependencies.
- **IntelliJ IDEA** or another IDE for developing Java applications.

## Installation

To install and set up the application locally, follow these steps:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/StudentEase-Team/student-ease-backend-server.git
    ```

2. **Install dependencies:**

    - While in the `student-ease-backend-server` directory, run:

    ```bash
    mvn install
    ```

    - Or visit ```pom.xml``` while in IntelliJ IDE and install dependecies from there.

3. **Set up environment variables:**

    - Add a `.env` file in the root directory of the application with the following content (replace what is needed):

    ```plaintext
    DB_USER=db-username-here
    DB_PASS=db-password
    DB_URL=jdbc:postgresql://127.0.0.1:5432/postgres
    TOKEN_SECRET=token-secret-here
    EMAIL_HOST=smtp.gmail.com
    EMAIL_PORT=587
    EMAIL_USERNAME=email@provider.com
    EMAIL_PASSWORD=email-password
    ```

4. **Add the Environment Plugin in IntelliJ IDEA:**

    - Open **IntelliJ IDEA**.
    - Go to **File > Settings > Plugins**.
    - Search for and install the **EnvFile** plugin.
    - After installation, go to **Run/Debug Configurations**.
    - Select your application configuration.
    - Add the `.env` file under **EnvFile** in the configuration settings.

5. **Start the server:**

    ```bash
    mvn spring-boot:run
    ```

    Or via IntelliJ IDE.

## Usage

The application will run on `http://localhost:8080`. The API endpoints can be used to connect with the frontend application.

## Configuration

- **Database:** Customize the `DB_USER`, `DB_PASS`, and `DB_URL` values in the `.env` file according to your local database setup.
- **Email Configuration:** Adjust the `EMAIL_HOST`, `EMAIL_PORT`, `EMAIL_USERNAME`, and `EMAIL_PASSWORD` for sending emails.

