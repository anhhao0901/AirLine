<?php
	if(isset($_GET['id'])){
		$id = $_GET['id'];
	}else{
		$id = '';
	}
	$sql_chitiet = mysqli_query($con,"SELECT * FROM tbl_chuyenbay,tbl_tuyenbay WHERE tbl_chuyenbay.tuyenbay_id= tbl_tuyenbay.tuyenbay_id AND chuyenbay_id='$id'"); 
?>
<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="index.php">Trang chủ</a>
						<i>|</i>
					</li>
					<li>Chuyến Bay</li>

				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<?php
	while($row_chitiet = mysqli_fetch_array($sql_chitiet)){ 
	?>
	<!-- Single Page -->
	<div class="banner-bootom-w3-agileits py-5">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			
			<!-- //tittle heading -->
			<div class="row">
				<div class="col-lg-5 col-md-8 single-right-left ">
					<div class="grid images_3_of_2">
						<div class="flexslider">
							<ul class="slides">
								<li data-thumb="images/<?php echo $row_chitiet['chuyenbay_image'] ?>">
									<div class="thumb-image">
										<img src="images/<?php echo $row_chitiet['chuyenbay_image'] ?>" data-imagezoom="true" class="img-fluid" height="360" width="450" alt=""> </div>
								</li>
							
								
							</ul>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>

				<div class="col-lg-7 single-right-left simpleCart_shelfItem">
					<h3 class="mb-3"><?php echo $row_chitiet['tuyenbay_name'] ?></h3>
					<p class="mb-3">
						<span class="item_price"><?php echo number_format($row_chitiet['chuyenbay_giakhuyenmai']).'vnđ' ?></span>
						<del class="mx-2 font-weight-light"><?php echo number_format($row_chitiet['chuyenbay_gia']).'vnđ' ?></del>
						<h5><label style= "color:#0879c9"><b>Đi Muôn Nơi Cùng BH AirLines - Điểm Đến Hàng Đầu</b></h5></label><br>
					</p>
					
					<div class="product-single-w3l">
						<br><h6 style="font-size: 17px;color:#ce0f05f8"><b>Ngày Khởi Hành <?php echo $row_chitiet['ngaydi']?></b></h6><br>						
						<h6 style="font-size: 17px;">Giờ Khởi Hành <?php echo $row_chitiet['giokhoihanh'] ?></h6><br>
						<h6 style="font-size: 17px;">Ngày Đến <?php echo $row_chitiet['ngayden'] ?></h6><br>
						<h6 style="font-size: 17px;">Thời Gian Đến Dự Kiến <?php echo $row_chitiet['thoigiandukien'] ?></h6><br>
						<h6 style="font-size: 17px;">Tên Máy Bay <?php echo $row_chitiet['chuyenbay_tenmaybay'] ?></h6><br>
						<br>
					</div>
					<div class="occasion-cart">
						<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
						<form action="?quanly=bookve" method="post">
						<fieldset>
							<input type="hidden" name="tenchuyen" value="<?php echo $row_chitiet['tuyenbay_name'] ?>" />
							<input type="hidden" name="chuyenbay_id" value="<?php echo $row_chitiet['chuyenbay_id'] ?>" />
							<input type="hidden" name="giasanpham" value="<?php echo $row_chitiet['chuyenbay_giakhuyenmai'] ?>" />
							<input type="hidden" name="hinhanh" value="<?php echo $row_chitiet['chuyenbay_image'] ?>" />
							<input type="hidden" name="soluong" value="1" />			
							<input type="submit" name="themve" value="Đặt Vé" class="button" />
						</fieldset>
						</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Single Page -->
	<?php
	} 
	?>
	<marquee behavior="alternate" direction="right" scrollamount="23" loop="-1" >
	<?php
		$sql_slider = mysqli_query($con,"SELECT * FROM tbl_image WHERE image_active='1' ORDER BY image_id");
		while($row_slider = mysqli_fetch_array($sql_slider)){ 
	?>
	<img src="images/<?php echo $row_slider['image_name'] ?>" alt="" height="170" width="380">
		<?php
			} 
		?>
  	</marquee>
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
							<div class="row" style="text-indent:1.5rem">&emsp;
								<h5><i class="fab fa-facebook-messenger fa-2x"></i>
									<i class="fa fa-envelope fa-2x"></i>
									<i class="fab fa-skype fa-2x"></i>
									<i class="fab fa-twitter fa-2x"></i>
								</h5>
								
							
							</div>
							<div class="row2 icon-fot">
								<h4><i class="fas fa-phone"></i>&emsp;Gọi điện thoại cho chúng tôi</h4>
							</div>
							<div class="row" style="text-indent:1.5rem">&emsp;
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
								<h5 style="text-indent:1rem;">Quý khách có thể thanh toán bằng cách chuyển khoản trực tiếp
								<h5 style="text-indent:1rem;">&emsp;Vietcombank - 1033051319 - LE THI TIEU BANG</h5></h5><br>
							</div>
						</div>
					</div>
				</div>
				<div class="map mt-sm-0 mt-4">
					<iframe src="https://www.google.com/maps/embed?pb=!1m19!1m8!1m3!1d318.4426293083084!2d105.75888083922297!3d10.029616805551305!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x31a0883f671acab1%3A0xfbe30475ff294c60!2zQW4gS2jDoW5oLCBQaMaw4budbmcgQW4gS2jDoW5oLCBOaW5oIEtp4buBdSwgQ-G6p24gVGjGoSwgVmnhu4d0IE5hbQ!3m2!1d10.029795799999999!2d105.7590949!5e0!3m2!1svi!2s!4v1653799070656!5m2!1svi!2s" width:20% height:20%></iframe>
				</div>

		</div></div></div>