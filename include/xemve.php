<?php
	if(isset($_GET['huydon'])&& isset($_GET['magiaodich'])){
		$huydon = $_GET['huydon'];
		$magiaodich = $_GET['magiaodich'];
	}else{
		$huydon = '';
		$magiaodich = '';
	}
	$sql_update_giaodich = mysqli_query($con,"UPDATE tbl_hoadon SET huydon='$huydon' WHERE magiaodich='$magiaodich'");
?>
<!-- top Products -->
	<div class="ads-grid py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">Xem Hóa Đơn</h3>
			<!-- //tittle heading -->
			<div class="row">
				<!-- product left -->
				<div class="agileinfo-ads-display col-lg-9">
					<div class="wrapper">
						<!-- first section -->
						
							<div class="row"><h5>
								<?php
								if(isset($_SESSION['dangnhap_home'])){
									echo 'Hóa đơn : '.$_SESSION['dangnhap_home'];
								} 
								?></h5>
							<div class="col-md-12">
								
								<?php
								if(isset($_GET['khachhang'])){
									$id_khachhang = $_GET['khachhang'];
								}else{
									$id_khachhang = '';
								}
								$sql_select = mysqli_query($con,"SELECT * FROM tbl_hoadon WHERE tbl_hoadon.khachhang_id='$id_khachhang' GROUP BY tbl_hoadon.magiaodich ORDER BY tbl_hoadon.ngaythang DESC"); 
								?> 
								<table class="table table-bordered ">
									<tr>
										<th>Thứ Tự</th>
										<th>Mã Giao Dịch</th>
									
										<th>Ngày Đặt</th>
										<th>Quản Lý</th>
										<th>Tình Trạng</th>
										<th>Yêu Cầu</th>
									</tr>
									<?php
									$i = 0;
									while($row_giaodich = mysqli_fetch_array($sql_select)){ 
										$i++;
									?> 
									<tr>
										<td><?php echo $i; ?></td>
										
										<td><?php echo $row_giaodich['magiaodich']; ?></td>
									
										
										<td><?php echo $row_giaodich['ngaythang'] ?></td>
										<td><a href="index.php?quanly=xemve&khachhang=<?php echo $_SESSION['khachhang_id'] ?>&magiaodich=<?php echo $row_giaodich['magiaodich'] ?>">Xem Chi Tiết</a></td>
										<td><?php 
										if($row_giaodich['tinhtrang']==0){
											echo 'Đã Đặt Vé';
										}else{
											echo 'Đã Xử Lý ';
										}
										?></td>
										<td>
											<?php
											if($row_giaodich['huydon']==0){ 
											?>
											<a href="index.php?quanly=xemve&khachhang=<?php echo $_SESSION['khachhang_id'] ?>&magiaodich=<?php echo $row_giaodich['magiaodich'] ?>&huydon=1">Yêu Cầu Hủy</a>
											<?php
										}elseif($row_giaodich['huydon']==1){											
											?>
											<p>Đang Chờ Hủy...</p>
											<?php
											}else{
												echo 'Đã Hủy';
											}
											?>
										</td>
									</tr>
									 <?php
									} 
									?> 
								</table>
							</div>


							<div class="col-md-12">
								<h5>Chi Tiết Hóa Đơn</h6><br>
								<?php
								if(isset($_GET['magiaodich'])){
									$magiaodich = $_GET['magiaodich'];
								}else{
									$magiaodich = '';
								}
								$sql_select = mysqli_query($con,"SELECT * FROM tbl_hoadon,tbl_khachhang,tbl_chuyenbay,tbl_tuyenbay WHERE tbl_chuyenbay.tuyenbay_id= tbl_tuyenbay.tuyenbay_id AND tbl_hoadon.chuyenbay_id=tbl_chuyenbay.chuyenbay_id AND tbl_khachhang.khachhang_id=tbl_hoadon.khachhang_id AND tbl_hoadon.magiaodich='$magiaodich' ORDER BY tbl_hoadon.hoadon_id DESC"); 
								?> 
								<table class="table table-bordered ">
									<tr>
										<th>Thứ Tự</th>
										<th>Mã Giao Dịch</th>
										<th>Tên Chuyến Bay</th>
										<th>Số Lượng</th>
										<th>Khoang</th>
										<th>Giá</th>
										<th>Tổng Tiền</th>
										<th>Ngày Đặt</th>
										
									</tr>
									<?php
									$i = 0;
									while($row_giaodich = mysqli_fetch_array($sql_select)){ 
										$i++;

										$sql = mysqli_query($con,"SELECT * FROM tbl_khoang where khoang_id = '".$row_giaodich['khoang_id']."'");
										$row_khoang = mysqli_fetch_array($sql);
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
									
										
									</tr>
									 <?php
									} 
									?> 
								</table>
							</div>
							</div>

						
						<!-- //first section -->
					</div>
				</div>
				<!-- //product left -->
				<!-- product right -->
				
			</div>
		</div>
	</div>
	<!-- //top products -->