<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>庫存管理系統</title>
<?php
include('conn.php');
?>

</head>
<link rel="stylesheet" href="Bootstrap/Superhero/Superhero.css">
<link rel="stylesheet" href="css/search2.css">
<link rel="stylesheet" href="css/style.css">
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
        <li class="active"><a href="stock.php">庫存管理系統 <span class="sr-only">(current)</span></a></li>
        <li><a href="Order.php">店取訂單系統</a></li>
        <li><a href="#">問題訂單追蹤</a></li>
          <li><a href="member.php">會員資料管理</a></li>
       
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
    
     <h3>庫存管理系統</h3>
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
  <li><img src="img/edit-notes.png" width="60" height="58"  alt="編輯資料" ></li>
   <li id="Excel"><img src="img/Excel.png" width="55" height="55"  alt="匯出報表" ></li>

  </ul></div> 
  
     <table class="table table-striped table-hover ">

  
  <thead>
	  <tr class="info">
      <th>產品代碼</th>
      <th>產品名稱</th>
      <th>產品條碼</th>
      <td align="center">數量</td>
      <td align="center">庫存量</td>
      <td align="center">售價</td>
      <td align="center">有效期限</td>
      <td >狀態</td>
    </tr>
  </thead>
    
  <tbody>
<?
$sql=" SELECT * FROM `產品` ";
$result = mysql_query($sql) or die('SQL ERROR!!');
while($record = mysql_fetch_array($result) ){
?> 
    <tr>
    
      <td><?=$record['PID']?></td>
      <td><?=$record['Pname']?></td>
      <td><?=$record['Pcode']?></td>
      <td align="center"><?=$record['Pquantity']?></td>
      <td align="center"><?=$record['Pstock']?></td>
      <td align="center"><?=$record['Pprice']?></td>
       <td align="center"><?=$record['Ptime']?></td>
       <td ><?=$record['Pstatus']?></td>
<?
}
?>
    </tr>

  </tbody>

</table> 
  
  
 

  </div>
   

  <div id="main3">  
  
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