# NoteTaker
Note Taker is a web app using JSP, Servlets, Hibernate, and Bootstrap, enabling users to create, view, edit, and manage notes seamlessly.
# Note Taker

A web-based application for managing personal notes using **JSP**, **Servlets**, **Hibernate**, and **Bootstrap**. This project demonstrates a CRUD (Create, Read, Update, Delete) functionality for notes management, with a user-friendly interface.

## Features

- **Home Module**: Displays the main dashboard with navigation options.
- **Add Notes Module**: Allows users to add new notes with a title and content.
- **Show Notes Module**: Displays all saved notes and provides options to edit or delete them.

## Technologies Used

- **Frontend**: Bootstrap for responsive and stylish UI.
- **Backend**: JSP and Servlets for server-side processing.
- **Database Interaction**: Hibernate ORM for seamless CRUD operations.
- **Database**: MySQL (or your preferred relational database).

  ![home](https://github.com/user-attachments/assets/eb1bf0b3-92ae-49ac-a42b-dacc68cc45c7)
 
![Add notes](https://github.com/user-attachments/assets/78b0c8e8-d2f7-46e0-954c-590decc6a6d4)

![ShowPage1](https://github.com/user-attachments/assets/feef4fcb-ecea-49b2-b9b5-cd24883dea0c)

![showPage2](https://github.com/user-attachments/assets/5935f34d-f54a-43b9-acd7-482173f2df9c)

![Database](https://github.com/user-attachments/assets/61864011-92ea-4ee2-9228-fe42b140e91f)

1. Configure the Database:

. Create a MySQL database (e.g., notetaker_db).
. Update the Hibernate configuration (hibernate.cfg.xml) with your database credentials.

2. Deploy to a Server:

. Use a servlet container like Apache Tomcat.
. Place the project WAR file in the webapps directory of Tomcat.

3. Run the Application:

. Start the Tomcat server.
. Open your browser and visit: [http://localhost:8080/note-taker/](http://localhost:11980/NotesTaker/index.jsp)

4. CRUD Operations with Hibernate
   Create: Add new notes to the database.
   Read: Fetch and display all notes.
   Update: Modify existing notes.
   Delete: Remove notes from the database.
