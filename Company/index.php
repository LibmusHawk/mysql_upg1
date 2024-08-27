<?php
include 'db_connect.php';

$sql = "SELECT id, fname, Inname, title, start_year, phone, email, street_address, postal_code, city FROM companytable";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Ovn_1</title>
</head>
<body>

<style>
    table{
  border: 1px solid;
  text-align: center;
}

th, td {
  border-bottom: 1px solid #6495ED;
  border-left: 1px solid black;
}

th
{
   background: #6495ED; 
   color: white;
}

table {
  width: 1000px;
  height: 200px;
  border-collapse: collapse;
}

</style>


<h2>Employees</h2>

<table class="database">
    <tr>
        <th>ID</th>
        <th>fname</th>
        <th>Iname</th>
        <th>title</th>
        <th>start_year</th>
        <th>Phone</th>
        <th>email</th>
        <th>street_address</th>
        <th>postal_code</th>
        <th>City</th>
    </tr>

    <?php
    if ($result->num_rows > 0) {
        // Output data of each row
        while($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row["id"] . "</td>";
            echo "<td>" . $row["fname"] . "</td>";
            echo "<td>" . $row["Inname"] . "</td>";
            echo "<td>" . $row["title"] . "</td>";
            echo "<td>" . $row["start_year"] . "</td>";
            echo "<td>" . $row["phone"] . "</td>";
            echo "<td>" . $row["email"] . "</td>";
            echo "<td>" . $row["street_address"] . "</td>";
            echo "<td>" . $row["postal_code"] . "</td>";
            echo "<td>" . $row["city"] . "</td>";
            echo "</tr>";
        }
    } else {
        echo "<tr><td colspan='4'>No results found</td></tr>";
    }

    $min_year = 2009;
    $max_year = 2006;

    $sql = "SELECT fname FROM companytable WHERE start_year BETWEEN $max_year AND $min_year";
    $result = $conn->query($sql);
    ?>

</table>

<br>
<br>
<h3>startade 2006-2009:</h3>
<ul>
    <?php
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo "<li>" . $row["fname"] . "</li>";
        }
    }
    ?>
</ul>
</body>
</html>

<?php
// Close the database connection
$conn->close();
?>