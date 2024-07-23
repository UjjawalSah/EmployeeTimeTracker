Employee Time Tracker
Project Overview
The Employee Time Tracker is an application designed to help employees capture and monitor their tasks and working hours. It offers robust task management features, role-based access control (RBAC), comprehensive duration tracking, and visual data representations through charts.

Key Features
Task Management:

Allows employees to add, edit, and delete task details, capturing essential information like employee name, role, project, date, time duration, task category, and description.
Role-Based Access Control (RBAC):

Implements distinct access levels for Associate and Admin users, ensuring secure and appropriate access to functionalities.
Duration Tracking:

Provides detailed tracking of total hours worked, with options to view data on a daily, weekly, and monthly basis.
Charts and Visualization:

For Associates:
Displays daily task/hours distribution as a Pie chart.
Shows weekly and monthly task/hours data as Bar charts.
For Admins (Optional):
Allows viewing of charts for selected projects or employees on a daily, weekly, and monthly basis.
Technical Considerations
Role-Based Actions: Ensures users can perform actions based on their roles.
Duplicate Entry Prevention: Restricts adding duplicate entries for the same date and time.
Duration Limitation: Limits task duration to a maximum of 8 hours per entry.
Authentication: Ensures only authenticated users can access the application.
Project Implementation
The project follows a three-tier architecture consisting of:

Presentation Layer: User interfaces built with HTML, CSS, and JavaScript for interacting with users.
Business Logic Layer: Server-side logic implemented using Java and Spring Boot for core functionalities.
Data Access Layer: Database interactions managed with MySQL for storing and retrieving data.
Additional Information
The project involves creating a high-level design document, preparing a bill of materials (BOM), designing and implementing modularized code, and creating a normalized database schema.
Detailed setup instructions, code implementation, and contribution guidelines are provided in the repository.
Conclusion
The Employee Time Tracker aims to streamline the process of capturing and monitoring employee tasks and working hours. With its robust feature set, secure access controls, and intuitive data visualization, it enhances productivity and transparency within the organization.
