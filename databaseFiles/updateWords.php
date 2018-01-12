<?php 
// Including database connections
require_once 'database_connections.php';
// Fetching the updated data & storin in new variables
$data = json_decode(file_get_contents("php://input")); 
// Escaping special characters from updated data

$id = mysqli_real_escape_string($con, $data->id);
$word = mysqli_real_escape_string($con, $data->word);
$word_syllables= mysqli_real_escape_string($con, $data->word_syllables);

// mysqli query to insert the updated data
$query = "UPDATE words SET word='$word',word_syllables='$word_syllables' WHERE id=$id";
mysqli_query($con, $query);
echo true;
?>