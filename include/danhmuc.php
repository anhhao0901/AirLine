<?php
	if(isset($_GET['id'])){
		$id = $_GET['id'];
	}else{
		$id = '';
	}
	$sql_cate = mysqli_query($con,"SELECT * FROM tbl_danhmuc,tbl_chuyenbay,tbl_tuyenbay WHERE tbl_danhmuc.danhmuc_id=tbl_chuyenbay.danhmuc_id AND tbl_chuyenbay.tuyenbay_id= tbl_tuyenbay.tuyenbay_id AND tbl_chuyenbay.danhmuc_id='$id' ORDER BY tbl_chuyenbay.chuyenbay_id DESC");	
	$sql_category = mysqli_query($con,"SELECT * FROM tbl_danhmuc,tbl_chuyenbay,tbl_tuyenbay WHERE tbl_danhmuc.danhmuc_id=tbl_chuyenbay.danhmuc_id AND tbl_chuyenbay.tuyenbay_id= tbl_tuyenbay.tuyenbay_id AND tbl_chuyenbay.danhmuc_id='$id' ORDER BY tbl_chuyenbay.chuyenbay_id DESC");		

	$row_title = mysqli_fetch_array($sql_category);
	$title = $row_title['danhmuc_name'];		
	?>
<!-- top Products -->
	<div class="ads-grid py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3"><?php echo $title ?></h3>
			<!-- //tittle heading -->
			<div class="row">
				<!-- product left -->
				<div class="agileinfo-ads-display col-lg-9">
					<div class="wrapper">
						<!-- first section -->
						<div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
							<div class="row">
								<?php
								while($row_ve = mysqli_fetch_array($sql_cate)){ 
								?>
								<div class="col-md-4 product-men mt-5">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item text-center">
											<img src="images/<?php echo $row_ve['chuyenbay_image'] ?>" alt="" height="190" width="260">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="?quanly=chitietcb&id=<?php echo $row_ve['chuyenbay_id'] ?>" class="link-product-add-cart">Xem Chuyến Bay</a>
												</div>
											</div>
										</div>
										<div class="item-info-product text-center border-top mt-4">
											<h4 class="pt-1">
												<a href="?quanly=chitietcb&id=<?php echo $row_ve['chuyenbay_id'] ?>"><?php echo $row_ve['tuyenbay_name'] ?></a>
											</h4>
											<div class="info-product-price my-2">
												<span class="item_price"><?php echo number_format($row_ve['chuyenbay_giakhuyenmai']).'vnđ' ?></span>
												<del><?php echo number_format($row_ve['chuyenbay_gia']).'vnđ' ?></del>
											</div>
											<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
												<form action="?quanly=bookve" method="post">
												<fieldset>
													<input type="hidden" name="chuyenbay_id" value="<?php echo $row_ve['chuyenbay_id'] ?>" />
																
													<input type="submit" name="themve" value="Đặt Vé" class="button" />
												</fieldset>
											</form>
											</div>
										</div>
									</div>
								</div>
								<?php
								} 
								?>
							</div>
						</div>
						<!-- //first section -->
					</div>
				</div>
				<!-- //product left -->
				<!-- product right -->
				<div class="col-lg-3 mt-lg-0 mt-4 p-lg-0">
					<div class="side-bar p-sm-4 p-3">
						<!-- <div class="search-hotel border-bottom py-2">
							<h3 class="agileits-sear-head mb-3">Tìm Kiếm</h3>
							<form action="index.php?quanly=timkiem" method="post">
								<input name= search_product type="search" placeholder="Sản phẩm..." required="">
								<input type="submit" value=" ">
							</form>
						</div> -->
						<!-- electronics -->
						<div class="left-side border-bottom py-2">

							<h3 class="agileits-sear-head mb-3">Danh Mục Vé</h3>
							<ul>
								<?php 
									$sql_category_sidebar = mysqli_query($con,'SELECT * FROM tbl_danhmuc ORDER BY danhmuc_id DESC');
									while($row_category_sidebar = mysqli_fetch_array($sql_category_sidebar)){
								?>
								<li>
									<!-- <input type="checkbox" class="checked"> -->
									<span class="span"><a href="?quanly=danhmuc&id=<?php echo $row_category_sidebar['danhmuc_id'] ?>"><?php echo $row_category_sidebar['danhmuc_name'] ?></a></span>
								</li>
								<?php
								} 
								?>
							</ul>
						</div>
						<!-- //electronics -->
					
						
						<!-- best seller -->
					<div class="f-grid py-2">
						<h3 class="agileits-sear-head mb-3">Vé Hot</h3>
						<div class="box-scroll">
							<div class="scroll">
								<?php
								$sql_product_sidebar = mysqli_query($con,"SELECT * FROM tbl_chuyenbay,tbl_tuyenbay WHERE tbl_chuyenbay.tuyenbay_id= tbl_tuyenbay.tuyenbay_id AND chuyenbay_hot='0' ORDER BY chuyenbay_id DESC"); 
								while($row_chuyenbay_sidebar = mysqli_fetch_array($sql_product_sidebar)){
								?>
								<div class="row">
									<div class="col-lg-3 col-sm-2 col-3 left-mar">
										<img src="images/<?php echo $row_chuyenbay_sidebar['chuyenbay_image'] ?>" alt="" class="img-fluid">
									</div>
									<div class="col-lg-9 col-sm-10 col-9 w3_mvd">
										<a href=""><?php echo $row_chuyenbay_sidebar['tuyenbay_name'] ?></a>
										<a href="" class="price-mar mt-2"><?php echo number_format($row_chuyenbay_sidebar['chuyenbay_giakhuyenmai']).'vnđ' ?></a>
										<del><?php echo number_format($row_chuyenbay_sidebar['chuyenbay_gia']).'vnđ' ?></del>
									</div>
								</div>
								<?php
								} 
								?>
							</div>
						</div>
					</div>
						<!-- //best seller -->	
					</div>
					<!-- //product right -->
				</div>
			</div>
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
								<h5 style="text-indent:1rem;">Quý khách có thể thanh toán bằng cách chuyển khoản trực tiếp 
								<h5 style="text-indent:1rem;">&emsp;Vietcombank - 1033051319 - LE THI TIEU BANG</h5></h5><br>
							</div>
						</div>
					</div>
				</div>
				<div class="map mt-sm-0 mt-4">
					<iframe src="https://www.google.com/maps/embed?pb=!1m19!1m8!1m3!1d318.4426293083084!2d105.75888083922297!3d10.029616805551305!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x31a0883f671acab1%3A0xfbe30475ff294c60!2zQW4gS2jDoW5oLCBQaMaw4budbmcgQW4gS2jDoW5oLCBOaW5oIEtp4buBdSwgQ-G6p24gVGjGoSwgVmnhu4d0IE5hbQ!3m2!1d10.029795799999999!2d105.7590949!5e0!3m2!1svi!2s!4v1653799070656!5m2!1svi!2s" width:20% height:20%></iframe>
				</div>

		</div>
	</div>
	<!-- //top products -->