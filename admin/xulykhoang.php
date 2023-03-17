<?php
	include('../db/connect.php');
?>
<?php
	if(isset($_POST['themkhoang'])){
		$tenkhoang = $_POST['khoang'];
        $giakhoang = $_POST['giakhoang'];
		$sql_insert = mysqli_query($con,"INSERT INTO tbl_khoang(tenkhoang,giakhoang) values ('$tenkhoang','$giakhoang')");
	}elseif(isset($_POST['capnhatkhoang'])){
		$id_post = $_POST['khoang_id'];
		$tenkhoang = $_POST['khoang'];
        $giakhoang = $_POST['giakhoang'];
		$sql_update = mysqli_query($con,"UPDATE tbl_khoang SET tenkhoang='$tenkhoang',giakhoang='$giakhoang' WHERE khoang_id='$id_post'");
		header('Location:xulykhoang.php');
	}
	if(isset($_GET['xoa'])){
		$id= $_GET['xoa'];
		$sql_xoa = mysqli_query($con,"DELETE FROM tbl_khoang WHERE khoang_id='$id'");
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="../images/favicon.png" type="image/png"/>
	<title>Khoang</title>
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
		  <li class="nav-item">
	        <a class="nav-link" href="xulytuyenbay.php">Tuyến Bay</a>
	      </li>
		  <li class="nav-item active">
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
				$sql_capnhat = mysqli_query($con,"SELECT * FROM tbl_khoang WHERE khoang_id='$id_capnhat'");
				$row_capnhat = mysqli_fetch_array($sql_capnhat);
				?>
				<div class="col-md-4">
				<h4>Cập Nhật Khoang</h4>
				<form action="" method="POST">
                    <label>Tên Khoang</label>
					<input type="text" class="form-control" name="khoang" value="<?php echo $row_capnhat['tenkhoang'] ?>"><br>
					<input type="hidden" class="form-control" name="khoang_id" value="<?php echo $row_capnhat['khoang_id'] ?>">
                    <label>Giá Khoang</label>
					<input type="text" class="form-control" name="giakhoang" value="<?php echo $row_capnhat['giakhoang'] ?>"><br>
					<input type="submit" name="capnhatkhoang" value="Cập nhật khoang" class="btn btn-default">
                </form>
				</div>
			<?php
			}else{
				?>
				<div class="col-md-4">
				<h4>Thêm Khoang</h4>
				<form action="" method="POST">
                    
				    <label>Tên Khoang</label>
					<input type="text" class="form-control" name="khoang" placeholder="Tên Khoang"><br>
                    <label>Giá Khoang</label>
					<input type="text" class="form-control" name="giakhoang" placeholder="Giá Khoang"><br>
					<input type="submit" name="themkhoang" value="Thêm Khoang" class="btn btn-default">
				</form>
				</div>
				<?php
			} 
			
				?>
			<div class="col-md-8">
				<h4>Liệt Kê Khoang</h4>
				<?php
				$sql_select = mysqli_query($con,"SELECT * FROM tbl_khoang ORDER BY khoang_id DESC"); 
				?>
				<table class="table table-bordered ">
					<tr>
						<th>Thứ Tự</th>
						<th>Tên Khoang</th>
                        <th>Giá</th>
						<th>Quản Lý</th>
					</tr>
					<?php
					$i = 0;
					while($row_category = mysqli_fetch_array($sql_select)){ 
						$i++;
					?>
					<tr>
						<td><?php echo $i; ?></td>
						<td><?php echo $row_category['tenkhoang'] ?></td>
                        <td><?php echo number_format($row_category['giakhoang']).'vnđ' ?></td>
						<td><a href="?xoa=<?php echo $row_category['khoang_id'] ?>">Xóa</a> || <a href="?quanly=capnhat&id=<?php echo $row_category['khoang_id'] ?>">Cập Nhật</a></td>
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