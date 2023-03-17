<?php
error_reporting(0);

 if(isset($_POST['themve'])){
 	$chuyenbay_id = $_POST['chuyenbay_id'];
 	addve($_POST['chuyenbay_id'], 1);

 }else if(isset($_POST['update_khoang'])){
 	$chuyenbay_id = $_POST['chuyenbay_id'];
 	$khoang_id = $_POST['update_khoang'];
 	update_khoang($chuyenbay_id, $khoang_id);

 }else if(isset($_POST['update_quantity'])){
 	$chuyenbay_id = $_POST['chuyenbay_id'];
 	$quantity = $_POST['update_quantity'];
 	update_ve($chuyenbay_id, $quantity);

 }elseif(isset($_GET['xoa'])){
 	$id = $_GET['xoa'];
 	remove_ve($id);
 	echo '<script language="javascript">window.location = "index.php?quanly=bookve" </script>';
 }elseif(isset($_GET['dangxuat'])){
	$id = $_GET['dangxuat'];
	if($id==1){
		unset($_SESSION['dangnhap_home']);
		echo '<script language="javascript">window.location = "index.php?quanly=bookve" </script>';
	}
}elseif(isset($_POST['thanhtoan'])){
 	$name = $_POST['name'] ;
	$cccd = $_POST['cccd'] ;
 	$phone = $_POST['phone'] ;
 	$email = $_POST['email'] ;
 	$password = md5($_POST['password']) ;
 	$note = $_POST['note'] ;
 	$address = $_POST['address'] ;

 	$sql_khachhang = mysqli_query($con,"INSERT INTO tbl_khachhang(name,cccd,phone,email,address,note,password) values ('$name','$cccd','$phone','$email','$address','$note','$password')");
 	if($sql_khachhang){
 		$sql_select_khachhang = mysqli_query($con,"SELECT * FROM tbl_khachhang ORDER BY khachhang_id DESC LIMIT 1");
 		$magiaodich = rand(0,9999);
 		$row_khachhang = mysqli_fetch_array($sql_select_khachhang);
 		$khachhang_id = $row_khachhang['khachhang_id'];
 		$_SESSION['dangnhap_home'] = $row_khachhang['name'];
 		$_SESSION['khachhang_id'] = $khachhang_id;

 		for($i = 0; $i < count($_SESSION['datve']); $i++) {
	 		$chuyenbay_id = $_SESSION['datve'][$i]['id'];
	 		$soluong =$_SESSION['datve'][$i]['qty'];
	 		$khoang_id = $_SESSION['datve'][$i]['khoang_id'];
	 		$tongtien = get_total();

	 		$sql_giaodich = mysqli_query($con,"INSERT INTO tbl_hoadon(chuyenbay_id,khachhang_id,soluong,magiaodich,khoang_id,tongtien) values ('$chuyenbay_id','$khachhang_id','$soluong','$magiaodich','$khoang_id','$tongtien')");
 		}

 		unset($_SESSION['datve']);
		echo '<script language="javascript">alert("Đặt vé thành công");</script>';

 	}
 }elseif(isset($_POST['thanhtoandangnhap'])){

 	$khachhang_id = $_SESSION['khachhang_id'];
 	$magiaodich = rand(0,9999);	


 	for($i = 0; $i < count($_SESSION['datve']); $i++) {
	 		$chuyenbay_id = $_SESSION['datve'][$i]['id'];
	 		$soluong = $_SESSION['datve'][$i]['qty'];
	 		$khoang_id = $_SESSION['datve'][$i]['khoang_id'];
	 		$tongtien = get_total();

	 		$sql_giaodich = mysqli_query($con,"INSERT INTO tbl_hoadon(chuyenbay_id,khachhang_id,soluong,magiaodich,khoang_id,tongtien) values ('$chuyenbay_id','$khachhang_id','$soluong','$magiaodich','$khoang_id','$tongtien')");
 		}

 	unset($_SESSION['datve']);
	echo '<script language="javascript">alert("Đặt vé thành công");</script>';
 }
?>

<!-- checkout page -->
	<div class="privacy py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
				Vé Của Bạn
			</h3>
				<?php 
				if(isset($_SESSION['dangnhap_home'])){
					echo '<p style="color:#000;">Xin Chào Bạn: '.$_SESSION['dangnhap_home'].'</p>';
				}else{
					echo '';
				}
				?>
				
			<!-- //tittle heading -->
			<div class="checkout-right">
			

				<div class="table-responsive">
					<form action="" method="POST">
					
					<table class="timetable_sub">
						<thead>
							<tr>
								<th style="background-color: #ce0f05f8;">Thứ Tự</th>
								<th style="background-color: #ce0f05f8;">Tuyến bay</th>
								<th style="background-color: #ce0f05f8;">Khoang</th>
								<th style="background-color: #ce0f05f8;">Số Lượng</th>
								<th style="background-color: #ce0f05f8;">Giá</th>
								<th style="background-color: #ce0f05f8;">Giá Tổng</th>
								<th style="background-color: #ce0f05f8;">Quản Lý</th>
							</tr>
						</thead>
						<tbody>
						<?php 
							
							
							if(count($_SESSION['datve']) > 0) {

								for($i = 0; $i < count($_SESSION['datve']); $i++) {

								$chuyenbay_id = $_SESSION['datve'][$i]['id'];
								$qty = $_SESSION['datve'][$i]['qty'];
								$khoang_id = $_SESSION['datve'][$i]['khoang_id'];

								$sql = mysqli_query($con,"SELECT * FROM tbl_chuyenbay,tbl_tuyenbay where tbl_tuyenbay.tuyenbay_id=tbl_chuyenbay.tuyenbay_id AND chuyenbay_id = '".$chuyenbay_id."'");
								$row = mysqli_fetch_array($sql);

						?>
							<tr class="rem1">
								<td class="invert"><?php echo $i + 1 ?></td>
								<td class="invert-image">
									<?php echo $row['tuyenbay_name'] ?>
								</td>
								<td class="invert">
									<form action="" method="POST">
									
										<input type="hidden" name="chuyenbay_id" value="<?=$chuyenbay_id?>">

										<select name="update_khoang" onchange='this.form.submit()'>
											<option value="">Chọn khoang</option>
										<?php 
											$sql_khoang = mysqli_query($con,'SELECT * FROM tbl_khoang ORDER BY khoang_id ASC');

											while($row_khoang = mysqli_fetch_array($sql_khoang)){?>
											<option <?php if($row_khoang['khoang_id'] == $khoang_id) echo 'selected'; ?> value="<?=$row_khoang['khoang_id']?>"><?=$row_khoang['tenkhoang']?></option>
										<?php }?>
										</select>
									</form>
								</td>
								<td class="invert">
									<form action="" method="POST">
										<input type="hidden" name="chuyenbay_id" value="<?=$chuyenbay_id?>">
										<input type="number" onchange='this.form.submit()' name="update_quantity" value="<?=$qty?>">
                            		</form>
								</td>
								<td class="invert"><?php echo number_format($row['chuyenbay_giakhuyenmai'] + get_gia_khoang($khoang_id)).'vnđ' ?></td>
								<td class="invert"><?php echo number_format(($row['chuyenbay_giakhuyenmai'] + get_gia_khoang($khoang_id)) * $qty).'vnđ' ?></td>
								<td class="invert">
									<a href="?quanly=bookve&xoa=<?php echo $chuyenbay_id ?>">Xóa</a>
								</td>
							</tr>
							<?php } ?>
							<tr>
								<td colspan="7"><h4>Tổng Tiền : <?php echo number_format(get_total()).'vnđ' ?></h4></td>

							</tr>
							<?php if(isset($_SESSION['dangnhap_home'])) {?>
							<tr>
								<td colspan="7">
									<form action="" method="POST">
										<input type="submit" class="btn btn-primary" value="Thanh Toán Vé" name="thanhtoandangnhap">
									</form>
								</td>
							</tr>
							<?php } ?>
						<?php }?>
						</tbody>
					</table>
					</form>
				</div>
			</div>
			<?php
			if(!isset($_SESSION['dangnhap_home'])){ 
			?>
			<div class="checkout-left">
				<div class="address_form_agile mt-sm-5 mt-4">
					<h4 class="mb-sm-4 mb-3">Thêm Thông Tin Đặt Vé</h4>
					<form action="" method="post" class="creditly-card-form agileinfo_form">
						<div class="creditly-wrapper wthree, w3_agileits_wrapper">
							<div class="information-wrapper">
								<div class="first-row">
									<div class="controls form-group">
										<input class="billing-address-name form-control" type="text" name="name" placeholder="Điền Tên" required>
									</div>
									<div class="w3_agileits_card_number_grids">
									<div class="w3_agileits_card_number_grid_left form-group">
											<div class="controls">
												<input type="text" class="form-control" placeholder="CCCD" name="cccd" required>
											</div>
										</div>
										<div class="w3_agileits_card_number_grid_left form-group">
											<div class="controls">
												<input type="text" class="form-control" placeholder="Số Phone" name="phone" required>
											</div>
										</div>
										<div class="w3_agileits_card_number_grid_right form-group">
											<div class="controls">
												<input type="text" class="form-control" placeholder="Địa Chỉ" name="address" required>
											</div>
										</div>
										<div class="controls form-group">
											<input type="text" class="form-control" placeholder="Email" name="email" required>
										</div>
									</div>
									<div class="controls form-group">
										<input type="text" class="form-control" placeholder="Password" name="password" required >
									</div>
									<div class="controls form-group">
										<textarea style="resize: none;" class="form-control" placeholder="Ghi Chú" name="note"></textarea>
									</div>
								</div>
								
								<input type="submit" name="thanhtoan" class="btn btn-success" style="width: 20%" value="Thanh Toán">
								
							</div>
						</div>
					</form>
					
				</div>
			</div>
			<?php
			} 
			?>
		</div>
	</div>
	<!-- //checkout page -->
	<div class="ads-grid py-sm-5 py-4">
	<div class="container py-xl-4 py-lg-2">
	<div class="row w3l-grids-footer border-top py-sm-4 py-3">
					<div class="col-md-6 offer-footer">
						<div class="row2">
							<div class="col-9 text-form-footer">
								<h3>Các Hình Thức Đặt Vé</h3>
							</div>
							<div class="row2 icon-fot">
								<h4><i class="fas fa-globe"></i>&emsp;Trực tiếp lên website, nhanh nhất - tiện nhất</h4>
							</div>
							<div class="row2 icon-fot">
								<h4><i class="fas fa-comment"></i>&emsp;Qua chat</h4>								
							</div>
							<div class="row" style="text-indent:1.5rem;">&emsp;
								<h5><i class="fab fa-facebook-messenger fa-2x"></i>
									<i class="fa fa-envelope fa-2x"></i>
									<i class="fab fa-skype fa-2x"></i>
									<i class="fab fa-twitter fa-2x"></i>
								</h5>
								
							
							</div>
							<div class="row2 icon-fot">
								<h4><i class="fas fa-phone"></i>&emsp;Gọi điện thoại cho chúng tôi</h4>
							</div>
							<div class="row " style="text-indent:1.5rem;">&emsp;
								<h5><i class="fas fa-phone-square fa-2x"></i>&emsp;<b style="font-size: 18pt;">0907986036 - 0778268330</b></h5>
							</div>
							<div class="row2 icon-fot">
								<h4><i class="fas fa-plane"></i>&emsp;Đến trực tiếp văn phòng BH Airlines</h4>
							</div>
						</div>
					</div>
					<div class="col-md-6 offer-footer my-md-0 my-4">
						<div class="row">
							<div class="col-9 text-form-footer text_center">
								<h3>Các Hình Thức Thanh Toán</h3>
							</div>
							<div class="row icon-fot">
								<h4 ><i class="fas fa-money-bill-alt"></i>&emsp;THANH TOÁN TIỀN MẶT KHI NHẬN VÉ</h4>
								<h5 style="text-indent:1rem;">Sau khi đặt vé thành công, quý khách vui lòng đem tiền mặt lại phòng vé BH Airlines để thanh toán và nhận vé</h5>
							</div>
							<div class="row2 icon-fot">
								<h4><i class="fas fa-home"></i>&emsp;THANH TOÁN TẠI NHÀ</h4>
								<h5 style="text-indent:1rem;">Nhân viên phòng vé sẽ giao vé và thu tiền tại nhà theo địa chỉ Quý khách đã cung cấp </h5>
							</div>
							<div class="row2 icon-fot">
								<h4><i class="fas fa-university"></i>&emsp;THANH TOÁN CHUYỂN KHOẢN</h4>
								<h5 style="text-indent:1rem;">Quý khách có thể thanh toán bằng cách chuyển khoản trực tiếp</h5>
								<h5 style="text-indent:1rem;">&emsp;Vietcombank - 1033051319 - LE THI TIEU BANG</h5><br>
							</div>
						</div>
					</div>
				</div>
				<div class="map mt-sm-0 mt-4">
					<iframe src="https://www.google.com/maps/embed?pb=!1m19!1m8!1m3!1d318.4426293083084!2d105.75888083922297!3d10.029616805551305!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x31a0883f671acab1%3A0xfbe30475ff294c60!2zQW4gS2jDoW5oLCBQaMaw4budbmcgQW4gS2jDoW5oLCBOaW5oIEtp4buBdSwgQ-G6p24gVGjGoSwgVmnhu4d0IE5hbQ!3m2!1d10.029795799999999!2d105.7590949!5e0!3m2!1svi!2s!4v1653799070656!5m2!1svi!2s" width:20% height:20%></iframe>
				</div>
			</div></div>
	<script>
			$('#formGioHang').on('submit', function(e) {
				// Xóa các validate cũ
				document.querySelectorAll('.is-invalid').forEach(item => item.classList.remove('is-invalid'));

				// Lấy giá trị các input
				const name = document.getElementById('name').value;
				const email = document.getElementById('email').value;
				const phone = document.getElementById('phone').value;
				const address = document.getElementById('address').value;
				const password = document.getElementById('password').value;

				// Tạo biến lỗi (mặc định ko có lỗi)
				let errors = {
					name: false,
					email: false,
					phone: false,
					address: false,
					password: false,
				};

				let hasError = false;

				// validate dữ liệu
				if (!name) {
					errors.name = 'Cột tên không được bỏ trống';
					hasError = true;
				} else if (name.length < 10) {
					errors.name = 'Cột tên không được dưới 10 kí tự';
					hasError = true;
				}

				if (!email) {
					errors.email = 'Cột email không được bỏ trống';
					hasError = true;
				} else if (!validateEmail(email)) {
					errors.email = 'Email không hợp lệ';
					hasError = true;
				}

				if (!phone) {
					errors.phone = 'Cột số điện thoại không được bỏ trống';
					hasError = true;
				} else if (!validatePhoneNumber(phone)) {
					errors.phone = 'Số điện thoại không hợp lệ';
					hasError = true;
				}
				if (!address) {
					errors.address = 'Cột địa chỉ không được bỏ trống';
					hasError = true;
				} else if (address.length < 15) {
					errors.address = 'Cột địa chỉ không được dưới 15 kí tự';
					hasError = true;
				}
				if (!password) {
					errors.password = 'Cột mật khẩu không được bỏ trống';
					hasError = true;
				} else if (password.length < 3) {
					errors.password = 'Cột mật khẩu không được dưới 3 kí tự';
					hasError = true;
				}

				if (hasError) {
					e.preventDefault();
				}

				for (let key in errors) {
					if (errors[key]) {
						const invalidInputElement = document.querySelector(`#${key}`);

						invalidInputElement.classList.add('is-invalid');
						invalidInputElement.nextSibling.nextSibling.textContent = errors[key];
					}
				}
			});

			const validateEmail = (email) => {
				return String(email)
					.toLowerCase()
					.match(
						/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
					);
			};

			const validatePhoneNumber = (phone) => {
				return phone.match(/(84|0[3|5|7|8|9])+([0-9]{8})\b/g);
			}
		</script>