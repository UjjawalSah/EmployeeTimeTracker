<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Task Form</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #090979;
    }
    .container {
      max-width: 600px;
      margin: 0 auto;
      margin-top: 50px;
    }
    .form-group label {
      font-weight: bold;
    }
    .form-group input[type="text"], 
    .form-group input[type="date"], 
    .form-group input[type="time"], 
    .form-group textarea {
      border-radius: 20px !important;
    }
    .card {
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      background-color: white;
    }
  </style>
</head>
<body>

<div class="container">
  <div class="card p-4">
    <h2 class="text-center">ADD TASK</h2>
     <div class="btn-container">
            <a href="home1.jsp" class="btn btn-primary home-btn">Home</a>
        </div>
    <form action='add1' method='post'>
      <div class="form-group">
        <label for="task_id"><i class="bi bi-key"></i> task_id</label>
        <input type="text" class="form-control" id="task_id" name="task_id" placeholder="Enter Employee ID">
      </div>
       <div class="form-group">
        <label for="username"><i class="bi bi-key"></i> User name</label>
        <input type="text" class="form-control" id="username" name="username" placeholder="Enter User name">
      </div>
      <div class="form-group">
        <label for="employee_name"><i class="bi bi-person"></i> Employee Name:</label>
        <input type="text" class="form-control" id="employee_name" name="employee_name" placeholder="Enter Employee Name">
      </div>
      <div class="form-group">
        <label for="project"><i class="bi bi-journal"></i> Project:</label>
        <input type="text" class="form-control" id="project" name="project" placeholder="Enter Project Name">
      </div>
      <div class="form-group">
        <label for="date_1"><i class="bi bi-calendar"></i> Date:</label>
        <input type="date" class="form-control" id="date_1" name="date_1" placeholder="Select Date">
      </div>
      <div class="form-group">
        <label for="start_time"><i class="bi bi-clock"></i> Start Time:</label>
        <input type="time" class="form-control" id="start_time" name="start_time" placeholder="Select Start Time">
      </div>
      <div class="form-group">
        <label for="end_time"><i class="bi bi-clock"></i> End Time:</label>
        <input type="time" class="form-control" id="end_time" name="end_time" placeholder="Select End Time">
      </div>
      <div class="form-group">
        <label for="task_category"><i class="bi bi-card-checklist"></i> Task Category:</label>
        <input type="text" class="form-control" id="task_category" name="task_category" placeholder="Enter Task Category">
      </div>
      <div class="form-group">
        <label for="description"><i class="bi bi-textarea"></i> Description:</label>
        <textarea class="form-control" id="description" name="description" rows="3" placeholder="Enter Task Description"></textarea>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
