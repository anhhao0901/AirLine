<?php
	include('../db/connect.php');
	include('../include/fun_bookve.php');
	error_reporting(0);
?>
<?php 
if(isset($_POST['capnhatgiaodich'])){
	$xuly = $_POST['xuly'];
	$magiaodich = $_GET['magiaodich'];
	$sql_update_giaodich = mysqli_query($con,"UPDATE tbl_hoadon SET tinhtrang='$xuly' WHERE magiaodich='$magiaodich'");
}

?>
<?php
	if(isset($_GET['xoagiaodich'])){
		$magiaodich = $_GET['xoagiaodich'];
		$sql_delete = mysqli_query($con,"DELETE FROM tbl_hoadon WHERE magiaodich='$magiaodich'");
		header('Location:xulygiaodich.php');
	} 
	if(isset($_GET['xacnhanhuy'])&& isset($_GET['magiaodich'])){
		$huydon = $_GET['xacnhanhuy'];
		$magiaodich = $_GET['magiaodich'];
	}else{
		$huydon = '';
		$magiaodich = '';
	}
	$sql_update_giaodich = mysqli_query($con,"UPDATE tbl_hoadon SET huydon='$huydon' WHERE magiaodich='$magiaodich'");

	/* Set the default timezone */
    date_default_timezone_set('Asia/Ho_Chi_Minh');

    /* Set the date */
    $date = strtotime(date('y-m-d'));

    $month = date('m', $date);
    $year = date('Y', $date);

    $daysInMonth = cal_days_in_month(0, $month, $year);

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="../images/favicon.png" type="image/png"/>
	<title>Hóa Đơn</title>
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

	<script src="../js/jquery-2.2.3.min.js"></script>
	<script src="js/highcharts/highcharts.js"></script>
	<script src="js/highcharts/exporting.js"></script>

	<script type="text/javascript">
		$(function(){
			$('#highcharts').highcharts({
		        chart: {
		            type: 'column'
		        },
		        title: {
		            text: 'Thống kê doanh thu : <?php echo $month ?> - <?php echo $year ?> '
		        },
		        subtitle: {
		            text: ''
		        },
		        xAxis: {
		            type: 'category',
		            labels: {
		                style: {
		                    fontSize: '17px',
		                    fontFamily: 'Arial',
							fontStyle: 'bold'
		                }
		            }
		        },
		        yAxis: {
		            min: 0,
		            title: {
		                text: 'Số tiền'
		            }
		        },
		        legend: {
		            enabled: false
		        },
		        tooltip: {
				    pointFormat: 'Tổng: <b>{point.y}</b> {point.event}'
				},
		        series: [{
		            name: 'Population',
		            data: [
		            <?php for($i = 1; $i <= $daysInMonth; $i++):
						$day = $i < 10 ? "0".$i : $i;

		                $begin = $year.'-'.$month.'-'.$day;

		                $sql = mysqli_query($con,"select sum(a.tongtien) as tongtien from( SELECT tongtien FROM tbl_hoadon where SUBSTRING(ngaythang, 1, 10) ='$begin' group by magiaodich) a");
						$row_line = mysqli_fetch_array($sql);

		            ?>
		                ['<?=$i?>', <?=$row_line['tongtien'] ? $row_line['tongtien'] : 0 ?>],
		            <?php endfor; ?>
					]
		        }]
		    });
		})
	</script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
		<li class="nav-item active">
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
	</nav><br><br>
	<div class="container-fluid">
		<div class="row">
			 <?php
			if(isset($_GET['quanly'])=='xemgiaodich'){
				$magiaodich = $_GET['magiaodich'];
				$sql_chitiet = mysqli_query($con,"SELECT * FROM tbl_hoadon,tbl_chuyenbay,tbl_tuyenbay WHERE tbl_tuyenbay.tuyenbay_id=tbl_chuyenbay.tuyenbay_id AND tbl_hoadon.chuyenbay_id=tbl_chuyenbay.chuyenbay_id AND tbl_hoadon.magiaodich='$magiaodich'");
				?>
				<div class="col-md-7">
				<h5>Xem Chi Tiết Hóa Đơn</h5>
			<form action="" method="POST">
				<table class="table table-bordered ">
					<tr>
						<th>Thứ Tự</th>
						<th>Mã Giao Dịch</th>
						<th>Tên Chuyến Bay</th>
						<th>Số Lượng</th>
						<th>Khoang</th>
						<th>Giá</th>
						<th>Thành Tiền</th>
						<th>Ngày Đặt</th>

						
						<!-- <th>Quản lý</th> -->
					</tr>
					<?php
					$i = 0;
					while($row_giaodich = mysqli_fetch_array($sql_chitiet)){ 
						$i++;

						$sql = mysqli_query($con,"SELECT * FROM tbl_khoang where khoang_id = '".$row_giaodich['khoang_id']."'");
						$row_khoang = mysqli_fetch_array($sql);
						$tinhtrang =  $row_giaodich['tinhtrang'];
					?> 
					<tr>
						<td><?php echo $i; ?></td>
						<td><?php echo $row_giaodich['magiaodich']; ?></td>
						
						<td><?php echo $row_giaodich['tuyenbay_name']; ?></td>
						<td><?php echo $row_giaodich['soluong']; ?></td>

						<td><?php echo $row_khoang['tenkhoang']; ?></td>

						<td><?php echo number_format($row_giaodich['chuyenbay_giakhuyenmai']).'vnđ'; ?></td>
						<td><?php echo number_format($row_giaodich['soluong']*($row_giaodich['chuyenbay_giakhuyenmai'] + $row_khoang['giakhoang'])).'vnđ'; ?></td>
						
						<td><?php echo $row_giaodich['ngaythang'] ?></td>
						<input type="hidden" name="magiaodich_xuly" value="<?php echo $row_giaodich['magiaodich'] ?>">

						<!-- <td><a href="?xoa=<?php echo $row_giaodich['hoadon_id'] ?>">Xóa</a> || <a href="?quanly=xemgiaodich&magiaodich=<?php echo $row_giaodich['magiaodich'] ?>">Xem đơn hàng</a></td> -->
					</tr>
					 <?php
					} 
					?> 
					<!-- <tr><td colspan="8"><h5 style="text-align: center;">Tổng Tiền : <?php echo number_format(get_total()).'vnđ' ?></h5></td> </tr> -->
				</table>
				
				<select class="form-control" name="xuly">
					<option value="1" <?php if($tinhtrang == 1) echo 'selected';?>>Đã Xử Lý</option>
					<option value="0" <?php if($tinhtrang == 0) echo 'selected';?>>Chưa Xử Lý</option>
				</select><br>

				<input type="submit" value="Cập nhật hóa đơn" name="capnhatgiaodich" class="btn btn-success">
			</form>
				</div>  
			<?php
			}else{
				?> 
				
				<div class="col-md-7">
					<p>Thống kê hóa đơn</p>
					<div id="highcharts"></div>
					
				</div>  
				<?php
			} 
			
				?> 
			<div class="col-md-5">
				<h4>Liệt Kê Hóa Đơn</h4>
				<?php
				$sql_select = mysqli_query($con,"SELECT * FROM tbl_chuyenbay,tbl_khachhang,tbl_hoadon WHERE tbl_hoadon.chuyenbay_id=tbl_chuyenbay.chuyenbay_id AND tbl_hoadon.khachhang_id=tbl_khachhang.khachhang_id GROUP BY magiaodich ORDER BY tbl_hoadon.ngaythang DESC "); 
				?> 
				<table class="table table-bordered ">
					<tr>
						<th>Thứ Tự</th>
						<th>Mã Giao Dịch</th>
						<th>Tình Trạng Đơn Hàng</th>
						<th>Tên Khách Hàng</th>
						<th>Ngày Đặt</th>
						<th>Ghi Chú</th>
						<th>Hủy Đơn</th>
						<th>Quản Lý</th>
					</tr>
					<?php
					$i = 0;
					while($row_giaodich = mysqli_fetch_array($sql_select)){  
						$i++;
					?> 
					<tr>
						<td><?php echo $i; ?></td>
						
						<td><?php echo $row_giaodich['magiaodich']; ?></td>
						<td><?php
							if($row_giaodich['tinhtrang']==0){
								echo 'Chưa xử lý';
							}else{
								echo 'Đã xử lý';
							}
						?></td>
						<td><?php echo $row_giaodich['name']; ?></td>
						
						<td><?php echo $row_giaodich['ngaythang'] ?></td>
						<td><?php echo $row_giaodich['note'] ?></td>
						<td><?php if($row_giaodich['huydon']==0){ }elseif($row_giaodich['huydon']==1){
							echo '<a href="xulygiaodich.php?quanly=xemgiaodich&magiaodich='.$row_giaodich['magiaodich'].'&xacnhanhuy=2">Xác Nhận Hủy Đơn</a>';
						}else{
							echo 'Đã hủy';
						} 
						?></td>

						<td><a href="?xoagiaodich=<?php echo $row_giaodich['magiaodich'] ?>">Xóa</a> || <a href="?quanly=xemgiaodich&magiaodich=<?php echo $row_giaodich['magiaodich'] ?>">Xem </a></td>
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