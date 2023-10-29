<?php 

require_once '../includes/db.php';



// set the timezone first
if(function_exists('date_default_timezone_set')) {
    date_default_timezone_set("Asia/Kolkata");
}

$todaydate = date("Y-m-d");
$yesterday = date("Y-m-d",strtotime("-1 days"));

 /*
$this_month_start = mktime(0, 0, 0, date('m')-1, 01);
$this_month_end   = mktime(23, 59, 59, date('m'), 0);

echo date('d.m.Y H:i:s', $this_month_start) . ' - ' . date('d.m.Y H:i:s', $this_month_end) . '<br />';

$today = strtotime('today 00:00:00');

$last_week_start = strtotime('-2 week monday 00:00:00');
$last_week_end = strtotime('-1 week sunday 23:59:59');


echo date('d.m.Y H:i:s', $today) . ' - Today for example purposes<br />';
echo date('d.m.Y H:i:s', $this_week_start) . ' - ' . date('d.m.Y H:i:s', $this_week_end) . ' - Currently running week period<br />';
echo date('d.m.Y H:i:s', $last_week_start) . ' - ' . date('d.m.Y H:i:s', $last_week_end) . ' - Last week period<br />';
*/

$this_week_start = strtotime('-1 week sunday 00:00:00');
$this_week_end = strtotime('sunday 23:59:59');
$month = strtotime(date('Y-m-00', strtotime($todaydate)));
$lmonth =  strtotime(date("Y-m-t", strtotime($todaydate)));

  $week_dates = array();
  $month_dates = array();
  
 function date_range($first, $last, $step, $output_format) {

  
    $current = strtotime($first);
    $last = strtotime($last);

    while( $current <= $last ) {

  
        $current = strtotime($step, $current);  
        
        $week_dates[] =  date($output_format, $current);
//echo "<br>";
      //  echo date($output_format, $current);
    }

    return $week_dates;
}

function month_range($first, $last, $step, $output_format) {

  
    $current = strtotime($first);
    $last = strtotime($last);

    while( $current <= $last ) {

  
        $current = strtotime($step, $current);  
        
        $month_dates[] =  date($output_format, $current);
//echo "<br>";
      //  echo date($output_format, $current);
    }

    return $month_dates;
}


$week_dates_new = array();
$week_dates_new = date_range(date('Y-m-d', $this_week_start), date('Y-m-d', $this_week_end),  "+1 day", "Y-m-d" );

$month_dates_new = array();
$month_dates_new = date_range(date('Y-m-d', $month), date('Y-m-d', $lmonth),  "+1 day", "Y-m-d" );

//echo json_encode($month_dates_new);

 $todaydate;
 $yesterday;


$query="select amount, date FROM college_fee_instalment ";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();

if($result->num_rows > 0) {

$total_today_fee=0;
$total_yesterday_fee=0;

$total_week_fee=0;
$total_month_fee=0;
$totalfees=0;

	while($row = $result->fetch_assoc()) {


        if($row["date"]==$todaydate){
        $total_today_fee = $total_today_fee+$row["amount"];
        }

        if($row["date"]==$yesterday){
            $total_yesterday_fee = $total_yesterday_fee+$row["amount"];
            }
            

            if (in_array($row["date"],$week_dates_new)){
                $total_week_fee = $total_week_fee + $row["amount"];
            } 
      
            if (in_array($row["date"], $month_dates_new)){
            $total_month_fee = $total_month_fee + $row["amount"];
            } 

    $totalfees = $totalfees + $row["amount"];
    
   }

   $arr[] =array('status' => '1','todays' => "$total_today_fee", 'yesterday' => "$total_yesterday_fee", 'thisweek' => "$total_week_fee", 'thismonth' => "$total_month_fee", 'total' => "$totalfees");
    
    
# JSON-encode the response
echo $json_response = json_encode($arr);

}else{

    
$arr[] =array('status' => '0', 'datavalue' => 'no data found!');
echo $json_response =json_encode($arr);

}

?>