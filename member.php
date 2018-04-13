<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>會員資料管理</title>
<?php
include('conn.php');
?>

</head>
<link rel="stylesheet" href="Bootstrap/Superhero/Superhero.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/search2.css">
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/script2.js"></script>

<body>
<div id="herader">
	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand">PXmart</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      	<li><a href="track.php">生產追蹤追溯系統</a></li>
        <li ><a href="stock.php">庫存管理系統 <span class="sr-only">(current)</span></a></li>
        <li><a href="Order.php">店取訂單系統</a></li>
        <li><a href="#">問題訂單追蹤</a></li>
          <li class="active"><a href="member.php">會員資料管理</a></li>
       
      </ul>
     
      <ul class="nav navbar-nav navbar-right">
        <li><a href="system.php">上一頁</a></li>
         <li><a href="index.php">登出</a></li>
      </ul>
    </div>
  </div>
</nav>
</div>


<div id="wrap">
	
    <div id="Stitle">  		
    
     <h3>會員資料管理</h3>
    
   <div class="row">
  <div class="col-lg-6">
    <div class="input-group">
      <input type="text" class="form-control SearchBar" placeholder="Search for...">
      <span class="input-group-btn">
        <button class="btn btn-defaul SearchButton" type="button">
        	<img src="img/search-icon.png" width="21" height="21" >
        </button>
      </span>
    </div><!-- /input-group -->
  </div><!-- /.col-lg-6 -->
</div><!-- /.row -->
  
     
    </div>
      
  
     
    <div id="main2">  
<div id="copy"> <ul>
  <li><img src="img/edit.png" width="50" height="50"  alt="編輯客戶" ></li>
   <li id="Excel"><img src="img/Excel.png" width="50" height="50"  alt="匯出報表" ></li>

  </ul></div> 	
      
     <table class="table table-striped table-hover ">

  
  <thead>
	  <tr class="warning">
      <th>客戶編號</th>
      <th>客戶名稱</th>
      <td align="center">密碼</td>
      <td align="center">預設密碼</td>
      <td align="center">電話</td>
      <td align="center">地址</td>
      <td align="center">狀態</td>
    </tr>
  </thead>
    
  <tbody>
<?
$sql=" SELECT * FROM `member` ";
$result = mysql_query($sql) or die('SQL ERROR!!');
while($record = mysql_fetch_array($result) ){
?> 
    <tr>
    
      <td><?=$record['CID']?></td>
      <td><?=$record['Cname']?></td>
      <td align="center"><?=$record['CPassword']?></td>
       <td align="center"><?=$record['CPassworde']?></td>
      <td><?=$record['CPhone']?></td>
      <td align="center"><?=$record['Caddress']?></td>
      <td align="center"><?=$record['Cstatus']?></td>
      


     
<?
}
?>
    </tr>

  </tbody>

</table> 
  
  
 

  </div>
   

  <div id="main3">  
  <p>&nbsp;</p>
    <p>&nbsp;</p>  <p>&nbsp;</p>  
   <ul class="pagination pagination-lg">
  <li class="disabled"></li>
  <li class="disabled"><a href="#">&laquo;</a></li>
  <li class="active"><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
     <li><a href="#">5</a></li>
  <li><a href="#">6</a></li>
    <li><a href="#">7</a></li>
  <li><a href="#">&raquo;</a></li>
</ul>
  </div>  
  

</div>


</body>
</html>