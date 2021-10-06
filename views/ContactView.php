<?php 

$this->fileLayout = "LayoutTrangTrong.php";
	
 ?>

 <div class="body">

  
        <div class="body-breadcrumb">

<ol class="breadcrumb">
    
  <li class="breadcrumb-item"><a href="home.html">Trang chủ</a></li>
  <li class="breadcrumb-item active" aria-current="page">Liên hệ</li>
  
</ol>


        </div>
    <style type="text/css">
            .breadcrumb
            {
             margin-top: -10px;
              margin-left: -10px;
                background: none;
                font-size: 14px;
                text-decoration: none;
                font-family: 'Quicksand', sans-serif;
            }
             .breadcrumb a
            {
              color: #007bff;
              font-family: 'Quicksand', sans-serif;
                text-decoration: none;
            }
                   .breadcrumb-item.active
            {
               color: white;
               opacity: 0.7;
            }
    </style>

<div style="padding-bottom:100px;padding-top: 30px;" class="main">
<!-- --------------------------------------- -->
 <div class="container">
 	<div class="row">
       	
 		<div class="col-md-6">
            <div class="left contact-form">
            	<h3 style="padding-bottom: 30px;">Devpro Software company</h3>
                
 				<form action="<?php echo $action ; ?>" method="post">
 					<div class="form-group">
 						<input type="text" class="form-control required" name="name" placeholder="Họ và tên">	
 					</div>
 					<div class="form-group">
 						<input type="text" class="form-control required" name="sdt" placeholder="Số điện thoại">	
 					</div>
 					<div class="form-group">
 						<input type="text" class="form-control required" name="tieude" placeholder="Tiêu đề">	
 					</div>
 					<div class="form-group">
 						<textarea placeholder="Ghi chú" name="ghichu" class="form-control required"></textarea>	
 					</div>
 					<div class="form-group">
 						<button type="submit" class="bt btn-default txt-upper btn-submit"><span class="name">Gửi yêu cầu</span></button>	
 						
 					</div>
                  
                    <?php if (isset($_GET['notify'])&&$_GET['notify'] == "thanhcong"): ?>
                            <div class="thanhcong">
                        <p style="color:red;font-size: 16px;font-family: 'Quicksand', sans-serif;">Phản hồi thành công !!!</p>
                    </div>
                    <?php endif ?>
 				</form>              
        	      







           </div>
</div>
<!-- -------------------------------------------- -->
        
		<div class="col-md-6">
             <!-- righit -->
            <div class="right">
               <!-- top-right -->
               <div class="top-right">

               
               <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14895.235486079115!2d105.7744665!3d21.0403322!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70d71b071349fa94!2zQ8O0bmcgVHkgQ-G7lSBQaOG6p24gRGV2cHJvIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1630652435777!5m2!1svi!2s" width="600" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe>    






</div>
</div>

<style type="text/css">
.textarea .form-control{
	height: auto;
}
.form-group
{
	padding-bottom: 20px;
}
.txt-upper:hover
{
	border: 1px solid #ba933e ;
	color: white;
		background: #ba933e;
}
.txt-upper
{
	font-family: 'Quicksand', sans-serif;
	color: white;
	font-size: 14px;
    border: none;
    min-width: 50px;
    line-height: 35px;
    padding: 0 10px;
	background-color: #383838;
    border: 1px solid #383838;
	text-transform: uppercase;
}
.form-control
{
	font-family: 'Quicksand', sans-serif;
	border-radius: 0;
	border-color: #ddd;
	display: block;
    width: 150%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    border: 1px solid #ccc;
}
.left h3
{
	font-family: 'Quicksand', sans-serif;
	font-size: 19px;
	font-weight: bold;
	text-transform: uppercase;
  color: white;


}
</style>








              <!-- /list-product -->



        </div>
        <!-- bottom right -->
    
      </div>    
      <!-- /main -->
  </div>


