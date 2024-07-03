<?php
include 'dbconnect.php';

$pid = $_GET['patient_id'];
$sql = "SELECT * FROM patient where patient_id='$pid'";
$result = mysqli_query($conn, $sql);
$info = $result->fetch_assoc();

if (isset($_POST['Update'])) {
    $contact_no = $_POST['contact_no'];
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $gen =   $_POST['gen'];
    $dob =   $_POST['dob'];
    $doc_id = $_POST['doc_id'];

    $query = "UPDATE patient SET Fname='$fname',Lname='$lname',gender='$gen',dob='$dob',contact_no='$contact_no',doc_id='$doc_id' where patient_id='$pid' ";
    $result1 = mysqli_query($conn, $query);
    if ($result1) {
        // Redirect to display page after successful update
        header("Location: display_pat.php?patient_id=$pid");
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
    <title>Patient Update Page</title>
</head>

<body>
    <h1>Update Patient </h1>
    <div>
        <form action="#" method="POST">

            <div>
                <label>Patient Id</label>
                <input type="number" name="pid" value="<?php echo $info['patient_id']; ?>" readonly>
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
                <label>Gender </label>
                <input type="text" name="gen" value="<?php echo "{$info['gender']}"; ?>">
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
                <label>Doctor Appointed</label>
                <input type="number" name="doc_id" value="<?php echo "{$info['doc_id']}"; ?>">
            </div>
            <div>
                <input type="submit" name="Update" value="Update">
            </div>
        </form>
    </div>
</body>

</html>
