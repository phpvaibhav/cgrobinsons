<?php
$latitude 					           = ISSET($_GET['latitude'])? $_GET['latitude']: 54.59029007;
$longitude 					           = ISSET($_GET['longitude'])? $_GET['longitude'] : -1.30595410;
$location 					           = true;
$excludeParameterMetadata 	   = true;

echo "*******************Global hourly spot data 1.0.0 (WEATHER API)**************************<br>";
/***********************************************************************/
//$client_id 			= "8b291788-f31d-4d57-8c94-1ffff528d739" ;

//$client_secret_key 	= "E6pM1yQ3sU0uC4nQ0dX2rE3rV5bX2vX5uQ3yM6xW8oB7cF8oL2";
$client_secret_key    = "yU4fL0cB2qB0jL1eM0lG5bA8cA4jT6dO5rM7mS1yS3yH0hY3fF";
$client_id            = "2e873775-fdff-440e-ba04-2b66054945cc" ;
$url 				          = "https://api-metoffice.apiconnect.ibmcloud.com/metoffice/production/v0/forecasts/point/hourly?excludeParameterMetadata=".$excludeParameterMetadata."&includeLocationName=".$location."&latitude=".$latitude."&longitude=".$longitude;
$curl 				= curl_init();
curl_setopt_array($curl, array(
  CURLOPT_URL 				    => $url,
  CURLOPT_RETURNTRANSFER 	=> true,
  CURLOPT_ENCODING 			  => "",
  CURLOPT_MAXREDIRS 		  => 10,
  CURLOPT_TIMEOUT 			  => 30,
  CURLOPT_HTTP_VERSION 		=> CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST 	=> "GET",
  CURLOPT_HTTPHEADER 		  => array(
    "accept: application/json",
    "x-ibm-client-id:$client_id",
    "x-ibm-client-secret:$client_secret_key"
  ),
));

$response 	= curl_exec($curl);
$err 		    = curl_error($curl);

curl_close($curl);
/***********************************************************************/
if ($err) {
  echo "cURL Error #:" . $err;
} else {
  $data = json_decode($response,true);
 /* echo $data['features'][0]['properties']['timeSeries'][0]['time']."<br>";
  echo date('d-m-Y H:i A',strtotime($data['features'][0]['properties']['timeSeries'][0]['time']));*/
  if(isset($data['features']) && !empty($data['features'])){
    for ($i=0; $i <sizeof($data['features']) ; $i++) { 
      for ($j=0; $j <sizeof($data['features'][$i]['properties']['timeSeries']) ; $j++) { 
        $d    = $data['features'][$i]['properties']['timeSeries'][$j]['time'];
        $data['features'][$i]['properties']['timeSeries'][$j]['time'] = date('d-m-Y h:i A',strtotime($d));
      }
    }
  }
  echo "<pre>";
  print_r($data);
  echo "</pre>";
  //echo $response;
}