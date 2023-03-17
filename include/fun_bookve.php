<?php
	function update_ve($pid,$q){
		$pid=intval($pid);
		$max=count($_SESSION['datve']);
		$flag=0;
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['datve'][$i]['id']){
				$_SESSION['datve'][$i]['qty'] =$q;
				$flag=1;
				break;
			}
		}
		return $flag;
	}

	function update_khoang($pid,$khoang_id){
		$pid=intval($pid);
		$max=count($_SESSION['datve']);
		$flag=0;
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['datve'][$i]['id']){
				$_SESSION['datve'][$i]['khoang_id'] = $khoang_id;
				$flag=1;
				break;
			}
		}
		return $flag;
	}

	function remove_ve($pid){
		$pid=intval($pid);
		$max=count($_SESSION['datve']);
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['datve'][$i]['id']){
				unset($_SESSION['datve'][$i]);
				break;
			}
		}
		$_SESSION['datve']=array_values($_SESSION['datve']);
	}
	
	function get_price($pid){
		global $con;
		$sql = mysqli_query($con,"SELECT * FROM tbl_chuyenbay where chuyenbay_id = '".$pid."'");
		$row = mysqli_fetch_array($sql);
		return $row['chuyenbay_giakhuyenmai'];
	}

	function get_gia_khoang($pid){
		global $con;
		$sql = mysqli_query($con,"SELECT * FROM tbl_khoang where khoang_id = '".$pid."'");
		$row = mysqli_fetch_array($sql);
		return $row['giakhoang'] ? $row['giakhoang'] : 0;
	}

	function get_total(){
		global $d;
		$sum = 0;

		if(isset($_SESSION['datve'])){

			$max = count($_SESSION['datve']);
			
			for($i=0;$i<$max;$i++){
				$pid=$_SESSION['datve'][$i]['id'];
				$q=$_SESSION['datve'][$i]['qty'];
				$khoang_id=$_SESSION['datve'][$i]['khoang_id'];

				$sum+=(get_price($pid) + get_gia_khoang($khoang_id))*$q;
			}
		}

		return $sum;
	}

	function addve($pid,$q){
		if($pid<1 or $q<1) return;
		
		if(is_array($_SESSION['datve'])){
			if(check_exists($pid,$q)) return 0;
			$max=count($_SESSION['datve']);
			$_SESSION['datve'][$max]['id']=$pid;
			$_SESSION['datve'][$max]['qty']=$q;
			return count($_SESSION['datve']);
		}
		else{
			$_SESSION['datve']=array();
			$_SESSION['datve'][0]['id']=$pid;
			$_SESSION['datve'][0]['qty']=$q;
			return count($_SESSION['datve']);	
		}
	}
	
	function check_exists($pid,$q){
		$pid=intval($pid);
		$max=count($_SESSION['datve']);
		$flag=0;
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['datve'][$i]['id']){
				$_SESSION['datve'][$i]['qty'] = $_SESSION['datve'][$i]['qty'] + $q;
				$flag=1;
				break;
			}
		}
		return $flag;
	}

?>