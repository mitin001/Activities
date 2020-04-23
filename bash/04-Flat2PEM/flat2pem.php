<?php
echo "-----BEGIN CERTIFICATE-----\n";
foreach(str_split(file_get_contents("php://stdin"), 64) as $line) {
	echo trim($line)."\n"; // in case there is a trailing new line in the file
}
echo "-----END CERTIFICATE-----\n";
