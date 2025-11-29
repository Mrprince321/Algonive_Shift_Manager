=====================================================
        SHIFT MANAGER WEB APP (INTERNSHIP TASK)
=====================================================

👨‍💻 Developed By:  Bathu Kushwanth Kumar  
📅 Project: 2025 Internship Task By Algonive Team
🚀 Technologies Used:
   - Java (JSP + Servlets)
   - MySQL Database
   - Tomcat 9.0+
   - HTML/CSS (Futuristic UI)
   - Bootstrap 5

=====================================================
🧠 PROJECT OVERVIEW
=====================================================
ShiftManager is a basic shift management system built for small teams.

✔ Employees & Admins can register and log in  
✔ Admins can assign shifts to employees  
✔ Employees can view their assigned shifts  
✔ Session Management (Email saved using HttpSession)  
✔ Database connectivity tested using TestDBServlet  
✔ Futuristic UI with Glassmorphism & Animation  
✔ Fully responsive (mobile-friendly)

=====================================================
📂 DIRECTORY STRUCTURE
=====================================================
ShiftManager/
 ├── src/main/java/
 │     ├── db/DBConnection.java
 │     └── servlet/
 │           ├── RegisterServlet.java
 │           ├── LoginServlet.java
 │           ├── AssignShiftServlet.java
 │           └── ViewShiftsServlet.java
 │
 ├── src/main/webapp/
 │     ├── login.jsp
 │     ├── register.jsp
 │     ├── employeeDashboard.jsp
 │     ├── adminDashboard.jsp
 │     ├── adminAssignShift.jsp
 │     ├── navbar.jsp
 │     ├── style.css
 │     ├── images/
 │         └── bg.jpg
 │     └── WEB-INF/
 │           └── web.xml
 │
 └── README.txt (This file)

=====================================================
🗄️ SQL DATABASE SETUP
=====================================================
Run this in MySQL before starting the project:

CREATE DATABASE shift_manager;
USE shift_manager;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    role VARCHAR(20)
);

CREATE TABLE shifts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    start_time DATETIME,
    end_time DATETIME,
    FOREIGN KEY(employee_id) REFERENCES users(id)
);

=====================================================
▶ HOW TO RUN THE PROJECT
=====================================================
1. Open Eclipse
2. Import project → "Existing Project into Workspace"
3. Go to Server tab → Add Tomcat 9.0
4. Right click project → Run As → Run on Server
5. Use browser to test:

Backend Servlets:
✔ RegisterServlet      → http://localhost:8080/ShiftManager/register
✔ LoginServlet         → http://localhost:8080/ShiftManager/login
✔ AssignShiftServlet   → http://localhost:8080/ShiftManager/assignShift
✔ ViewShiftsServlet    → http://localhost:8080/ShiftManager/viewShifts
🧪 TestDBServlet       → http://localhost:8080/ShiftManager/testdb

=====================================================
💡 FUTURE IMPROVEMENTS
=====================================================
🔹 Add attendance marking  
🔹 PDF / Excel export  
🔹 Email notifications  
🔹 JWT-based authentication  
🔹 React frontend (if needed)

=====================================================
🎯 END GOAL (WHAT THIS PROVES)
=====================================================
✔ You know JSP + Servlets  
✔ You know MySQL & JDBC  
✔ You know Session Management  
✔ You can make UI (Bootstrap + CSS)  
✔ You understand MVC architecture  
✔ You are READY for real projects 💪

=====================================================
🔥 THANK YOU FOR REVIEWING MY WORK
=====================================================
