<?php
	if(isset($_POST['search_button'])){

	$tukhoa = $_POST['search_product'];
	$ngaydi = $_POST['search_date'];
	
		
	$sql_product = mysqli_query($con,"SELECT * FROM tbl_chuyenbay,tbl_tuyenbay WHERE tbl_chuyenbay.tuyenbay_id= tbl_tuyenbay.tuyenbay_id AND tuyenbay_name LIKE '%$tukhoa%' and ngaydi like '%$ngaydi%' ORDER BY chuyenbay_id DESC");		

	$title = $tukhoa;
	}		
	?> 
<!-- top Products -->
	<div class="ads-grid py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">

				Từ Khóa Tìm Kiếm : <?php echo $title ?>
					
					<?php if(isset($_POST['search_date'])) {?>
						- Ngày đi: <?=$ngaydi?>
					<?php }?>
				</h3>
			<!-- //tittle heading -->
			<div class="row">
				<!-- product left -->
				<div class="agileinfo-ads-display col-lg-9">
					<div class="wrapper">
						<!-- first section -->
						<div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
							<div class="row">
								<?php
								while($row_chuyenbay = mysqli_fetch_array($sql_product)){ 
								?>
								<div class="col-md-4 product-men mt-5">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item text-center">
											<img src="images/<?php echo $row_chuyenbay['chuyenbay_image'] ?>" alt="" height="190" width="260">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="?quanly=chitietcb&id=<?php echo $row_chuyenbay['chuyenbay_id'] ?>" class="link-product-add-cart">Xem Chuyến Bay</a>
												</div>
											</div>
										</div>
										<div class="item-info-product text-center border-top mt-4">
											<h4 class="pt-1">
												<a href="?quanly=chitietcb&id=<?php echo $row_chuyenbay['chuyenbay_id'] ?>"><?php echo $row_chuyenbay['tuyenbay_name'] ?></a>
											</h4>
											<div class="info-product-price my-2">
												<span class="item_price"><?php echo number_format($row_chuyenbay['chuyenbay_giakhuyenmai']).'vnđ' ?></span>
												<del><?php echo number_format($row_chuyenbay['chuyenbay_gia']).'vnđ' ?></del>
											</div>
											<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
												<form action="?quanly=bookve" method="post">
												<fieldset>
													<input type="hidden" name="tentuyenbay" value="<?php echo $row_chuyenbay['tuyenbay_name'] ?>" />
													<input type="hidden" name="chuyenbay_id" value="<?php echo $row_chuyenbay['chuyenbay_id'] ?>" />
													<input type="hidden" name="giasanpham" value="<?php echo $row_chuyenbay['chuyenbay_gia'] ?>" />
													<input type="hidden" name="hinhanh" value="<?php echo $row_chuyenbay['chuyenbay_image'] ?>" />
													<input type="hidden" name="soluong" value="1" />			
													<input type="submit" name="themve" value="Thêm Vé" class="button" />
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
					<!-- electronics -->
					<div class="left-side border-bottom py-2">
						<h3 class="agileits-sear-head mb-3">Danh Mục</h3>
						<ul>
							<?php 
								$sql_category_sidebar = mysqli_query($con,'SELECT * FROM tbl_danhmuc ORDER BY danhmuc_id DESC');
								while($row_category_sidebar = mysqli_fetch_array($sql_category_sidebar)){
							?>
							<li>
								<!-- <input type="checkbox" class="checked"> -->
								<span class="span"><a href="danhmucsanpham.php?id=<?php echo $row_category_sidebar['danhmuc_id'] ?>"><?php echo $row_category_sidebar['danhmuc_name'] ?></a></span>
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
		</div>
	</div>
	<!-- //top products -->

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