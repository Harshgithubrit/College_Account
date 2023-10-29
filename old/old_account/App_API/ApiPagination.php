<?php 
 
	//Getting the page number which is to be displayed  
	$page = $_GET['page'];	
	
	$querycount = $_GET['querycount'];	
	
	$query = $_GET['query'];	
	
	//Initially we show the data from 1st row that means the 0th row 
	$start = 0; 
	
	//Limit is 3 that means we will show 3 items at once
	$limit = 10; 
	
	$total = 0;
	//Importing the database connection 
	require_once '../includes/db.php';
	
 
	$countQuery = $querycount;

	$result=$mysqli->query($countQuery);
	// fetch data in array format  
	if(mysqli_affected_rows($mysqli)>0){
		while ($row=$result->fetch_assoc()) 
		{
			$total =	$row["tot"];
		}
	}
	
	

	
	  

 
	//We can go atmost to page number total/limit
	$page_limit = $total/$limit; 
	
	//If the page number is more than the limit we cannot show anything 
//	if($page<=$page_limit){
		
		//Calculating start for every given page number 
		$start = ($page - 1) * $limit; 

		//SQL query to fetch data of a range 
		$sql = $query." limit $start, $limit";

		$res = array(); 


		$result=$mysqli->query($sql);
		// fetch data in array format  
		if(mysqli_affected_rows($mysqli)>0){
			while ($row=$result->fetch_assoc()) 
			{
		    
		    	  
			array_push($res, $row);
		}
	}

	
		//Displaying the array in json format 
		echo json_encode($res);
//	}else{
           // echo "over";
   // }


    
    ?>