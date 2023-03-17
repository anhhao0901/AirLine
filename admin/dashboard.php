<?php
	session_start();
	if(!isset($_SESSION['dangnhap'])){
		header('Location: index.php');
	} 
	if(isset($_GET['login'])){
 	$dangxuat = $_GET['login'];
	 }else{
	 	$dangxuat = '';
	 }
	 if($dangxuat=='dangxuat'){
	 	session_destroy();
	 	header('Location: index.php');
	 }
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Welcome Admin</title>
	<link rel="icon" href="../images/favicon.png" type="image/png"/>
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
	<p>Xin Chào : <?php echo $_SESSION['dangnhap'] ?> <a href="?login=dangxuat">Đăng Xuất</a></p>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
	      <li class="nav-item">
	        <a class="nav-link" href="xulygiaodich.php">Hóa Đơn <span class="sr-only">(current)</span></a>
	      </li>
		  <li class="nav-item">
	        <a class="nav-link" href="xulydanhmucbaiviet.php">Danh Mục Bài Viết</a>
	      </li>
	         <li class="nav-item">
	        <a class="nav-link" href="xulybaiviet.php">Bài Viết</a>
	      </li>
		  <li class="nav-item">
	        <a class="nav-link" href="xulydanhmuc.php">Danh Mục</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="xulychuyenbay.php">Chuyến Bay</a>
	      </li>
		  <li class="nav-item">
	        <a class="nav-link" href="xulytuyenbay.php">Tuyến Bay</a>
	      </li>
		  <li class="nav-item">
	        <a class="nav-link" href="xulykhoang.php">Khoang</a>
	      </li>
	       <li class="nav-item">
	        <a class="nav-link" href="xulykhachhang.php">Khách Hàng</a>
	      </li>
		  <li class="nav-item">
	        <a class="nav-link" href="xulylienhe.php">Phản Hồi</a>
	      </li>
	      
	    </ul>
	  </div>
	</nav>
</body>
</html>