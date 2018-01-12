<?php 
// Including database connections
require_once 'database_connections.php';
// Fetching and decoding the inserted data
$data = json_decode(file_get_contents("php://input")); 
// Escaping special characters from submitting data & storing in new variables.
$word = mysqli_real_escape_string($con, $data->word);
$word_syllables= mysqli_real_escape_string($con, $data->word_syllables);

// mysqli insert query
$query = "INSERT into words (word,word_syllables) VALUES ('$word','$word_syllables')";
// Inserting data into database
mysqli_query($con, $query);
echo true;
?>