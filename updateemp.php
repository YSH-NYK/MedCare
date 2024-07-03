<?php
    include 'dbconnect.php';
    
    $eid = $_GET['emp_id'];
    $sql = "SELECT * FROM employee WHERE emp_id='$eid'";
    $result = mysqli_query($conn, $sql);   
    $info = $result->fetch_assoc();

    if (isset($_POST['Update'])) {
        $eid = $_POST['emp_id'];
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $designation = $_POST['desig'];
        $dept = $_POST['dept'];
        $dob = $_POST['dob'];
        $contact_no = $_POST['contact_no'];
        $gen = $_POST['gen'];
        $email = $_POST['email'];

        $query = "UPDATE employee SET Fname='$fname',Lname='$lname',designation='$designation',dept='$dept',dob='$dob',contact_no='$contact_no',gender='$gen',email='$email' WHERE emp_id='$eid'";
        $result1 = mysqli_query($conn, $query);
        if ($result1) {
            // Redirect to display page after successful update
            header("Location: display_emp.php?emp_id=$eid");
            exit();
        } else {
            echo "Update failed";
        }
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Update Page</title>
</head>

<body>
    <h1>Update Employee</h1>
    <div>
        <form action="#" method="POST">

            <div>
                <label>Employee Id</label>
                <input type="number" name="eid" value="<?php echo $info['emp_id']; ?>" readonly>
            </div>

            <div>
                <label>First Name</label>
                <input type="text" name="fname" value="<?php echo "{$info['Fname']}"; ?>">
            </div>
            <div>
                <label>Last Name</label>
                <input type="text" name="lname" value="<?php echo "{$info['Lname']}"; ?>">
            </div>
            <div>
                <label>Designation</label>
                <input type="text" name="desig" value="<?php echo "{$info['designation']}"; ?>">
            </div>
            <div>
                <label>Department</label>
                <input type="text" name="dept" value="<?php echo "{$info['dept']}"; ?>">
            </div>
            <div>
                <label>Date of Birth</label>
                <input type="date" name="dob" value="<?php echo "{$info['dob']}"; ?>">
            </div>
            <div>
                <label>Contact No</label>
                <input type="number" name="contact_no" value="<?php echo "{$info['contact_no']}"; ?>">
            </div>
            <div>
                <label>Gender</label>
                <input type="text" name="gen" value="<?php echo "{$info['gender']}"; ?>">
            </div>
            <div>
                <label>Email</label>
                <input type="email" name="email" value="<?php echo "{$info['email']}"; ?>">
            </div>
            <div>
                <input type="submit" name="Update" value="Update">
            </div>
        </form>
    </div>
</body>

</html>
