<?php
	include('../db/connect.php');
?>
<?php
	if(isset($_POST['themtuyenbay'])){
		$tentuyenbay = $_POST['tuyenbay'];
		$sql_insert = mysqli_query($con,"INSERT INTO tbl_tuyenbay(tuyenbay_name) values ('$tentuyenbay')");
	}elseif(isset($_POST['capnhattuyenbay'])){
		$id_post = $_POST['id_tuyenbay'];
		$tentuyenbay = $_POST['tuyenbay'];
		$sql_update = mysqli_query($con,"UPDATE tbl_tuyenbay SET tuyenbay_name='$tentuyenbay' WHERE tuyenbay_id='$id_post'");
		header('Location:xulytuyenbay.php');
	}
	if(isset($_GET['xoa'])){
		$id= $_GET['xoa'];
		$sql_xoa = mysqli_query($con,"DELETE FROM tbl_tuyenbay WHERE tuyenbay_id='$id'");
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="../images/favicon.png" type="image/png"/>
	<title>Tuyến Bay</title>
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
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
		  <li class="nav-item active">
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
	</nav><br><br>
	<div class="container">
		<div class="row">
			<?php
			if(isset($_GET['quanly'])=='capnhat'){
				$id_capnhat = $_GET['id'];
				$sql_capnhat = mysqli_query($con,"SELECT * FROM tbl_tuyenbay WHERE tuyenbay_id='$id_capnhat'");
				$row_capnhat = mysqli_fetch_array($sql_capnhat);
				?>
				<div class="col-md-4">
				<h4>Cập Nhật Tuyến Bay</h4>
				<label>Tên Tuyến Bay</label>
				<form action="" method="POST">
					<input type="text" class="form-control" name="tuyenbay" value="<?php echo $row_capnhat['tuyenbay_name'] ?>"><br>
					<input type="hidden" class="form-control" name="id_tuyenbay" value="<?php echo $row_capnhat['tuyenbay_id'] ?>">

					<input type="submit" name="capnhattuyenbay" value="Cập nhật tuyến bay" class="btn btn-default">
				</form>
				</div>
			<?php
			}else{
				?>
				<div class="col-md-4">
				<h4>Thêm Tuyến Bay</h4>
				<label>Tên Tuyến Bay</label>
				<form action="" method="POST">
					<input type="text" class="form-control" name="tuyenbay" placeholder="Tên Danh Mục"><br>
					<input type="submit" name="themtuyenbay" value="Thêm tuyến bay" class="btn btn-default">
				</form>
				</div>
				<?php
			} 
			
				?>
			<div class="col-md-8">
				<h4>Liệt Kê Tuyến Bay</h4>
				<?php
				$sql_select = mysqli_query($con,"SELECT * FROM tbl_tuyenbay ORDER BY tuyenbay_id DESC"); 
				?>
				<table class="table table-bordered ">
					<tr>
						<th>Thứ Tự</th>
						<th>Tên Tuyến Bay</th>
						<th>Quản Lý</th>
					</tr>
					<?php
					$i = 0;
					while($row_category = mysqli_fetch_array($sql_select)){ 
						$i++;
					?>
					<tr>
						<td><?php echo $i; ?></td>
						<td><?php echo $row_category['tuyenbay_name'] ?></td>
						<td><a href="?xoa=<?php echo $row_category['tuyenbay_id'] ?>">Xóa</a> || <a href="?quanly=capnhat&id=<?php echo $row_category['tuyenbay_id'] ?>">Cập Nhật</a></td>
					</tr>
					<?php
					} 
					?>
				</table>
			</div>
		</div>
	</div>
	
</body>
</html>