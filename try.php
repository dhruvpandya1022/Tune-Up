<?php

include("connection.php");

$q = "SELECT Song_ID,artist_name FROM `songs`,`artist` WHERE songs.artist_id = artist.artist_id";
$result = $con->query($q);


while($row = $result->fetch_assoc())
{
	$name = $row['artist_name'];
	$sid = $row['Song_ID'];
	$q2 = "UPDATE `album_songs` SET `artist_name`= '$name' WHERE `Song_ID` = '$sid'";
	$res = $con->query($q2);

	if($res > 0)
	{
		echo "Updated";
	}
	else
		echo "Nai hua be...!😒😒";

}

?>