<?php
	try
	{
		require_once '../includes/db.php';
		$data=array();
		
		
		if(isset($_REQUEST["method"]))
		{
			
			if($_REQUEST["method"]=="select")
			{
				$sql=$_REQUEST["query"];
				try
				{
					sleep(1);
					$result=$mysqli->query($sql);
					$tbldata = array();  
					// fetch data in array format  
					while ($row=$result->fetch_assoc()) 
					{  
							// Fetch data of Fname Column and store in array of row_array  
							$tbldata[] = $row;
									
									
							//push the values in the array  
							//array_push($json_response,$row_array);  
					}  
					$data["tbldata"]=$tbldata;
					$data["error"]="";
					$data["success"]=true;
							
					
				
				}
				catch(Exceptioon $e)
				{
					$data["error"]="Insert Failed due :".$e;
					$data["success"]=false;
					$data["msg"]=$data["error"];
				}
			}
			else if($_REQUEST["method"]=="insert")
			{
				
				 $sql=$_REQUEST["query"];
				
				
				try
				{	
                
                    
                    
					
						$tbldata = array();  
						
							
							$rs=$mysqli->multi_query($_REQUEST["query"]);
							// fetch data in array format  
							if(mysqli_affected_rows($mysqli)>0){
                                $data["tbldata"]=$tbldata;
                                $data["error"]="";
                                $data["success"]=true;
                                $data["msg"]="Insert Record  Successfull in [".$_REQUEST["method"]."]";
                            
                            }else {
                                $data["tbldata"]="";
                                $data["error"]="";
                                $data["success"]=false;
                                $data["msg"]="Record not inseted ";
                                }
						
						
							
					
				
				}
				catch(Exceptioon $e)
				{
					$data["error"]="Insert Failed due :".$e;
					$data["success"]=false;
					$data["msg"]=$data["error"];
				}
			}
			else if($_REQUEST["method"]=="update" || $_REQUEST["method"]=="delete")
			{
				
				$sql=$_REQUEST["query"];
				try
				{
					
					//$result=$mysqli->query($sql);
					$count=0;
					if(mysqli_multi_query($mysqli,$sql))
					{
						do
						{
						// Store first result set
							if ($result=mysqli_store_result($mysqli)) 
							{
							  // Fetch one and one row
								
							  // Free result set
							  mysqli_free_result($result);
							  }
						  	$count=$count+1;
						}  while (mysqli_next_result($mysqli));
					}
					
					
					if($count>0)
					{
						$data["tbldata"]="";
						$data["error"]="";
						$data["success"]=true;
						$ms=$_REQUEST["method"]=="UpdateRecord"?" Updated!!":" Deleted!!";
						$data["msg"]="Record ".$ms;
					}
					else
					{
						$data["tbldata"]="";
						$data["error"]="";
						$data["success"]=false;
						$ms=$_REQUEST["method"]=="UpdateRecord"?" Update Not Successfull!!":" Delete Not Successfull!!";
						$data["msg"]="Record ".$ms;
						$data["error"]="Record ".$ms;
					}
							
					
				
				}
				catch(Exceptioon $e)
				{
					$data["tbldata"]="";
					$data["error"]="Insert Failed due :".$e;
					$data["success"]=false;
					$data["msg"]=$data["error"];
				}
			}
			
			else
			{
				$data["tbldata"]="";
				$data["error"]="Command Failed!!";
				$data["success"]=false;
				$data["msg"]=$data["error"];
			}
		}
	
	}
	catch(Exception $e1)
	{
		$data["tbldata"]="";
		$data["error"]="Data mysqliection Failed due :".$e1;
		$data["success"]=false;
		$data["msg"]=$data["error"];
	}
	
	$myJSON = json_encode($data);
	echo $myJSON;		
			
			
	
	
		
	


?>