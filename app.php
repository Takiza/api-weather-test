<?php

    $city = json_encode($_POST, JSON_UNESCAPED_UNICODE);

    $host = 'localhost'; 
    $database = 'test_task_junior';
    $user = 'root';
    $password = '';

    $weather = "";
    $error = "";
    //$city = json_decode($data_json, true);
    $city =  $_POST['city'];
    //$city = 'London';


    $conn = new mysqli($host, $user, $password, $database);

    if ($conn->connect_error) {
        die();
    }

    $select = "SELECT * FROM weather_data WHERE City = '$city'";


    $result = $conn->query($select);

    if ($result->num_rows > 0){
        sel($result);
    }

    else
    {
    
        $urlContents = file_get_contents("https://api.openweathermap.org/data/2.5/forecast?q=".urlencode($city).",uk&appid=4b6cbadba309b7554491c5dc66401886");
        //print_r($urlContents);// die();
            
        $weatherArray = json_decode($urlContents, true);
            
        if ($weatherArray['cod'] == 200) {

            for ($i = 0; $i < 40;  $i++)
            {
                $dt = $weatherArray['list'][$i]['dt'];
                $temp = $weatherArray['list'][$i]['main']['temp'] - 273;
                $pressure = $weatherArray['list'][$i]['main']['pressure'];
                $humidity = $weatherArray['list'][$i]['main']['humidity'];

                $insert = "INSERT INTO weather_data (City, id, Dt, Temp, Pressure, Humidity) VALUES ('$city', '$i', '$dt', '$temp', '$pressure', '$humidity')";
                $conn->query($insert);
            }
            
            $result = $conn->query($select);
            sel($result);            
        }
    }

    function sel($result){
        $j = 0;
        while ($row = $result->fetch_assoc()){
            $return[$j] = $row;
            $j++;
        }

        $data = json_encode($return, JSON_UNESCAPED_UNICODE);
        echo $data;
    }    