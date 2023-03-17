<?php
	include('../db/connect.php');
?>
<?php
	error_reporting(0);
	if(isset($_POST['themchuyenbay'])){
		$tenchuyenbay = $_POST['tenchuyenbay'];
		$hinhanh = $_FILES['hinhanh']['name'];
		$soghe = $_POST['soghe'];
		$tenmaybay = $_POST['tenmaybay'];
		$ngaydi = $_POST['ngaydi'];
		$ngayden = $_POST['ngayden'];
		$cb_hot = $_POST['cb_hot'];
		$giokhoihanh = $_POST['giokhoihanh'];
		$thoigiandukien = $_POST['thoigiandukien'];
		$gia = $_POST['gia'];
		$giakhuyenmai = $_POST['giakhuyenmai'];
		$danhmuc = $_POST['danhmuc'];
		$path = '../uploads/';
		
		$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
		$sql_insert_product = mysqli_query($con,"INSERT INTO tbl_chuyenbay(danhmuc_id,tuyenbay_id,chuyenbay_tenmaybay,chuyenbay_gia,chuyenbay_giakhuyenmai,ngaydi,ngayden,chuyenbay_hot,chuyenbay_soghe,giokhoihanh,thoigiandukien,chuyenbay_image) values ('$danhmuc','$tenchuyenbay','$tenmaybay','$gia','$giakhuyenmai','$ngaydi','$ngayden','$cb_hot','$soghe','$giokhoihanh','$thoigiandukien','$hinhanh')");
		move_uploaded_file($hinhanh_tmp,$path.$hinhanh);
	}elseif(isset($_POST['capnhatchuyenbay'])) {
		$id_update = $_POST['id_update'];
		$tenchuyenbay = $_POST['tenchuyenbay'];
		$hinhanh = $_FILES['hinhanh']['name'];
		$soghe = $_POST['soghe'];
		$tenmaybay = $_POST['tenmaybay'];
		$ngaydi = $_POST['ngaydi'];
		$ngayden = $_POST['ngayden'];
		$cb_hot = $_POST['cb_hot'];
		$giokhoihanh = $_POST['giokhoihanh'];
		$thoigiandukien = $_POST['thoigiandukien'];
		$gia = $_POST['gia'];
		$giakhuyenmai = $_POST['giakhuyenmai'];
		$danhmuc = $_POST['danhmuc'];
		$path = '../uploads/';
		if($hinhanh==''){
			$sql_update_image = "UPDATE tbl_chuyenbay SET tuyenbay_id='$tenchuyenbay',chuyenbay_tenmaybay='$tenmaybay',chuyenbay_gia='$gia',chuyenbay_giakhuyenmai='$giakhuyenmai',ngaydi='$ngaydi',ngayden='$ngayden',chuyenbay_hot='$cb_hot',chuyenbay_soghe='$soghe',giokhoihanh='$giokhoihanh',thoigiandukien='$thoigiandukien',danhmuc_id='$danhmuc' WHERE chuyenbay_id='$id_update'";
		}else{
			move_uploaded_file($hinhanh_tmp,$path.$hinhanh);
			$sql_update_image = "UPDATE tbl_chuyenbay SET tuyenbay_id='$tenchuyenbay',chuyenbay_tenmaybay='$tenmaybay',chuyenbay_gia='$gia',chuyenbay_giakhuyenmai='$giakhuyenmai',ngaydi='$ngaydi',ngayden='$ngayden',chuyenbay_hot='$cb_hot',chuyenbay_soghe='$soghe',giokhoihanh='$giokhoihanh',thoigiandukien='$thoigiandukien',chuyenbay_image='$hinhanh',danhmuc_id='$danhmuc' WHERE chuyenbay_id='$id_update'";
		}
		mysqli_query($con,$sql_update_image);
	}
	
?> 
<?php
	if(isset($_GET['xoa'])){
		$id= $_GET['xoa'];
		$sql_xoa = mysqli_query($con,"DELETE FROM tbl_chuyenbay WHERE chuyenbay_id='$id'");
	} 
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="../images/favicon.png" type="image/png"/>
	<title>Chuyến Bay</title>
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
	      <li class="nav-item active">
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
	</nav><br><br>
	<div class="container">
		<div class="row">
		<?php
			if(isset($_GET['quanly'])=='capnhat'){
				$id_capnhat = $_GET['capnhat_id'];
				$sql_capnhat = mysqli_query($con,"SELECT * FROM tbl_chuyenbay WHERE chuyenbay_id='$id_capnhat'");
				$row_capnhat = mysqli_fetch_array($sql_capnhat);
				$id_category_1 = $row_capnhat['danhmuc_id'];
				$id_category_2 = $row_capnhat['tuyenbay_id'];
				?>
				<div class="col-md-4">
				<h4>Cập Nhật Chuyến Bay</h4>
				
				<form action="" method="POST" enctype="multipart/form-data">
				<?php
					$sql_danhmuc = mysqli_query($con,"SELECT * FROM tbl_tuyenbay ORDER BY tuyenbay_id DESC"); 
					?>
					<select name="tenchuyenbay" class="form-control">
						<option value="0">-----Chọn Tuyến Bay-----</option>
						<?php
						while($row_danhmuc = mysqli_fetch_array($sql_danhmuc)){
							if($id_category_2==$row_danhmuc['tuyenbay_id']){
						?>
						<option selected value="<?php echo $row_danhmuc['tuyenbay_id'] ?>"><?php echo $row_danhmuc['tuyenbay_name'] ?></option>
						<?php 
							}else{
						?>
						<option value="<?php echo $row_danhmuc['tuyenbay_id'] ?>"><?php echo $row_danhmuc['tuyenbay_name'] ?></option>
						<?php
							}
						}
						?>
					</select><br>
					<input type="hidden" class="form-control" name="id_update" value="<?php echo $row_capnhat['chuyenbay_id'] ?>">
					<label>Hình Ảnh</label>
					<input type="file" class="form-control" name="hinhanh"><br>
					<img src="../uploads/<?php echo $row_capnhat['chuyenbay_image'] ?>" height="80" width="80"><br>
					<label>Tên Máy Bay</label>
					<input type="text" class="form-control" name="tenmaybay" value="<?php echo $row_capnhat['chuyenbay_tenmaybay'] ?>"><br>
					<label>Giá</label>
					<input type="text" class="form-control" name="gia" value="<?php echo $row_capnhat['chuyenbay_gia'] ?>"><br>
					<label>Giá Khuyến Mãi</label>
					<input type="text" class="form-control" name="giakhuyenmai" value="<?php echo $row_capnhat['chuyenbay_giakhuyenmai'] ?>"><br>
					<label>Số Lượng Ghế</label>
					<input type="text" class="form-control" name="soghe" value="<?php echo $row_capnhat['chuyenbay_soghe'] ?>"><br>
					<label>Ngày Đi</label>
					<input type="date" class="form-control" name="ngaydi" value="<?php echo $row_capnhat['ngaydi'] ?>"><br>
					<label>Ngày Đến</label>
					<input type="date" class="form-control" name="ngayden" value="<?php echo $row_capnhat['ngayden'] ?>"><br>
					<label>Chuyến Bay Hot</label>
					<input type="text" class="form-control" name="cb_hot" value="<?php echo $row_capnhat['chuyenbay_hot'] ?>"><br>
					<label>Giờ Khởi Hành</label>
					<input type="time" class="form-control" name="giokhoihanh" value="<?php echo $row_capnhat['giokhoihanh'] ?>"><br>
					<label>Thời Gian Đến Dự Kiến</label>
					<input type="time" class="form-control" name="thoigiandukien" value="<?php echo $row_capnhat['thoigiandukien'] ?>"><br>
					<label>Danh Mục</label>
					<?php
					$sql_danhmuc = mysqli_query($con,"SELECT * FROM tbl_danhmuc ORDER BY danhmuc_id DESC"); 
					?>
					<select name="danhmuc" class="form-control">
						<option value="0">-----Chọn Danh Mục-----</option>
						<?php
						while($row_danhmuc = mysqli_fetch_array($sql_danhmuc)){
							if($id_category_1==$row_danhmuc['danhmuc_id']){
						?>
						<option selected value="<?php echo $row_danhmuc['danhmuc_id'] ?>"><?php echo $row_danhmuc['danhmuc_name'] ?></option>
						<?php 
							}else{
						?>
						<option value="<?php echo $row_danhmuc['danhmuc_id'] ?>"><?php echo $row_danhmuc['danhmuc_name'] ?></option>
						<?php
							}
						}
						?>
					</select><br>
					<input type="submit" name="capnhatchuyenbay" value="Cập nhật chuyến bay" class="btn btn-default">
				</form>
				</div>
			<?php
			}else{
				?> 
				<div class="col-md-4">
				<h4>Thêm Chuyến Bay</h4>
				<form action="" method="POST" enctype="multipart/form-data">
				<?php
					$sql_danhmuc = mysqli_query($con,"SELECT * FROM tbl_tuyenbay ORDER BY tuyenbay_id DESC"); 
					?>
					<select name="tenchuyenbay" class="form-control">
						<option value="0">-----Chọn Tuyến Bay-----</option>
						<?php
						while($row_danhmuc = mysqli_fetch_array($sql_danhmuc)){
							if($id_category_2==$row_danhmuc['tuyenbay_id']){
						?>
						<option selected value="<?php echo $row_danhmuc['tuyenbay_id'] ?>"><?php echo $row_danhmuc['tuyenbay_name'] ?></option>
						<?php 
							}else{
						?>
						<option value="<?php echo $row_danhmuc['tuyenbay_id'] ?>"><?php echo $row_danhmuc['tuyenbay_name'] ?></option>
						<?php
							}
						}
						?>
					</select><br>
					<input type="hidden" class="form-control" name="id_update" value="<?php echo $row_capnhat['chuyenbay_id'] ?>">
					<label>Hình Ảnh</label>
					<input type="file" class="form-control" name="hinhanh"><br>
					<img src="../uploads/<?php echo $row_capnhat['chuyenbay_image'] ?>" height="80" width="80"><br>
					<label>Tên Máy Bay</label>
					<input type="text" class="form-control" name="tenmaybay" value="<?php echo $row_capnhat['chuyenbay_tenmaybay'] ?>"><br>
					<label>Giá</label>
					<input type="text" class="form-control" name="gia" value="<?php echo $row_capnhat['chuyenbay_gia'] ?>"><br>
					<label>Giá Khuyến Mãi</label>
					<input type="text" class="form-control" name="giakhuyenmai" value="<?php echo $row_capnhat['chuyenbay_giakhuyenmai'] ?>"><br>
					<label>Số Lượng Ghế</label>
					<input type="text" class="form-control" name="soghe" value="<?php echo $row_capnhat['chuyenbay_soghe'] ?>"><br>
					<label>Ngày Đi</label>
					<input type="date" class="form-control" name="ngaydi" value="<?php echo $row_capnhat['ngaydi'] ?>"><br>
					<label>Ngày Đến</label>
					<input type="date" class="form-control" name="ngayden" value="<?php echo $row_capnhat['ngayden'] ?>"><br>
					<label>Chuyến Bay Hot</label>
					<input type="text" class="form-control" name="cb_hot" value="<?php echo $row_capnhat['chuyenbay_hot'] ?>"><br>
					<label>Giờ Khởi Hành</label>
					<input type="time" class="form-control" name="giokhoihanh" value="<?php echo $row_capnhat['giokhoihanh'] ?>"><br>
					<label>Thời Gian Đến Dự Kiến</label>
					<input type="time" class="form-control" name="thoigiandukien" value="<?php echo $row_capnhat['thoigiandukien'] ?>"><br>
					<label>Danh Mục</label>
					<?php
					$sql_danhmuc = mysqli_query($con,"SELECT * FROM tbl_danhmuc ORDER BY danhmuc_id DESC"); 
					?>
					<select name="danhmuc" class="form-control">
						<option value="0">-----Chọn Danh Mục-----</option>
						<?php
						while($row_danhmuc = mysqli_fetch_array($sql_danhmuc)){
							if($id_category_1==$row_danhmuc['danhmuc_id']){
						?>
						<option selected value="<?php echo $row_danhmuc['danhmuc_id'] ?>"><?php echo $row_danhmuc['danhmuc_name'] ?></option>
						<?php 
							}else{
						?>
						<option value="<?php echo $row_danhmuc['danhmuc_id'] ?>"><?php echo $row_danhmuc['danhmuc_name'] ?></option>
						<?php
							}
						}
						?>
					</select><br>
					<input type="submit" name="themchuyenbay" value="Thêm chuyến bay" class="btn btn-default">
				</form>
				</div>
				<?php
			} 
			
				?>
			<div class="col-md-8">
				<h4>Liệt Kê Chuyến Bay</h4>
				<?php
				$sql_select_cb = mysqli_query($con,"SELECT * FROM tbl_chuyenbay,tbl_danhmuc,tbl_tuyenbay WHERE tbl_tuyenbay.tuyenbay_id=tbl_chuyenbay.tuyenbay_id AND tbl_chuyenbay.danhmuc_id=tbl_danhmuc.danhmuc_id ORDER BY tbl_chuyenbay.chuyenbay_id DESC"); 
				?> 
				<table class="table table-bordered ">
					<tr>
						<th>Thứ Tự</th>
						<th>Tên Sản Phẩm</th>
						<th>Hình Ảnh</th>
						<th>Danh Mục</th>
						<th>Giá Sản Phẩm</th>
						<th>Giá Khuyến Mãi</th>
						<th>Quản Lý</th>
					</tr>
					<?php
					$i = 0;
					while($row_cb = mysqli_fetch_array($sql_select_cb)){ 
						$i++;
					?> 
					<tr>
						<td><?php echo $i ?></td>
						<td><?php echo $row_cb['tuyenbay_name'] ?></td>
						<td><img src="../uploads/<?php echo $row_cb['chuyenbay_image'] ?>" height="100" width="80"></td>
						<td><?php echo $row_cb['danhmuc_name'] ?></td>
						<td><?php echo number_format($row_cb['chuyenbay_gia']).'vnđ' ?></td>
						<td><?php echo number_format($row_cb['chuyenbay_giakhuyenmai']).'vnđ' ?></td>
						<td><a href="?xoa=<?php echo $row_cb['chuyenbay_id'] ?>">Xóa</a> || <a href="xulychuyenbay.php?quanly=capnhat&capnhat_id=<?php echo $row_cb['chuyenbay_id'] ?>">Cập Nhật</a></td>
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