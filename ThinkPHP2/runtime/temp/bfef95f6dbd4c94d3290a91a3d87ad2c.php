<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:76:"D:\phpStudy\PHPTutorial\WWW\ThinkPHP2/application/index\view\index\home.html";i:1546582744;s:79:"D:\phpStudy\PHPTutorial\WWW\ThinkPHP2\application\index\view\public\footer.html";i:1546501691;}*/ ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
	</script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.2/css/swiper.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.2/js/swiper.js"></script>
	<link href="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet">
	<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
	<style type="text/css" media="screen">
	.login { 
		/* 按钮美化 */
		width: 100px; /* 宽度 */
		height: 50px; /* 高度 */
		border-width: 0px; /* 边框宽度 */
		border-radius: 2px; /* 边框半径 */
		background:	 #ff1a1a;  /*#ff9900;  背景颜色#1E90FF  #DE8100  #3B200C*/
		cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
		outline: none; /* 不显示轮廓线 */
		font-family: Microsoft YaHei; /* 设置字体 */
		color: white; /* 字体颜色 */
		font-size: 17px; /* 字体大小 */
		border-radius:50px;"/*改变圆角，圆形按钮*/
		
		}
	.an{
		/*//加入购物车按钮*/
	
		width: 60px; /* 宽度 */
		height: 30px; /* 高度 */
		border-width: 0px; /* 边框宽度 */
		border-radius:50px 0 0 50px; /* 边框半径 */
		background:	  #ff9900 ;  /*#ff9900;  背景颜色#1E90FF  #DE8100  #3B200C*/
		cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
		outline: none; /* 不显示轮廓线 */
		font-family: Microsoft YaHei; /* 设置字体 */
		color: white; /* 字体颜色 */
		font-size: 10px; /* 字体大小 */
		
		
	}
	.Ran{
		/*购买按钮*/
		
		width: 60px; /* 宽度 */
		height: 30px; /* 高度 */
		border-width: 0px; /* 边框宽度 */
		border-radius:0 50px 50px 0; /* 边框半径 */
		background:	 #ff1a1a;  /*#ff9900;  背景颜色#1E90FF  #DE8100  #3B200C*/
		cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
		outline: none; /* 不显示轮廓线 */
		font-family: Microsoft YaHei; /* 设置字体 */
		color: white; /* 字体颜色 */
		font-size: 10px; /* 字体大小 */
		}

	td{
		/*//商品位置大小*/
		height:500px;width:500px;
		background-color: #e5e5ff;
	}	

	img{
		/*//商品图片大小*/
		height:500px;width:500px;
		background-size:contain;
	}
	span{
		/*//￥颜色*/
		color: red;
	}
	a{
		/*//价格字体大小*/
		font-size: 30px; 
		/* 字体大小 */
	}
	 .footer{
	 	/*下*/
         position: fixed;
         bottom: 0;
         width: 68%;
         left:16%;
         height: 60px;
         background-color:;
        
      }
      .header{
      	/*上*/
         position: fixed;
         top:0;
         width: 50%;
         height: 30px;
         background-color: green;
      }
        .main{
        	/*中*/
         margin-top: 35px;
         min-height: 1000px;
         background-color: goldenrod;
     }

.swiper-container {
    width: 1200px;
    height: 500px;
}  

	</style>
</head>


  
<body>
	<a href="<?php echo url('index/personal'); ?>" class="badge-pill badge-warning">个人中心</a>
  <font style="float: right;"><a href="javascript:history.go(-1);" class="btn badge-pill badge-info">返回上一页</a>

</font>




<hr>
<center>
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="swiper-container">
  <div class="swiper-wrapper">
    <div class="swiper-slide"><img src="/ThinkPHP2//img/image/1.jpg" alt=""></div>
    <div class="swiper-slide"><img src="/ThinkPHP2//img/image/2.jpg" alt=""></div>
    <div class="swiper-slide"><img src="/ThinkPHP2//img/image/3.jpg" alt=""></div>
  </div>
</div>
  </div>
  
</div>


</center>













<!-- ************************* -->
<!-- 	<div class="swiper-container">
  <div class="swiper-wrapper">
    <div class="swiper-slide"><img src="/ThinkPHP2//img/image/1.jpg" alt=""></div>
    <div class="swiper-slide"><img src="/ThinkPHP2//img/image/2.jpg" alt=""></div>
    <div class="swiper-slide"><img src="/ThinkPHP2//img/image/3.jpg" alt=""></div>
  </div>
</div>
<hr> -->
<hr>

<center>
	<table class="Aa" >

	<?php if(is_array($mem) || $mem instanceof \think\Collection || $mem instanceof \think\Paginator): $i = 0; $__LIST__ = $mem;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$value): $mod = ($i % 2 );++$i;?>
	<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="https://gju2.alicdn.com/tps/i1/2097984122/TB190glaaagSKJjy0FhXXcrbFXa_!!0-item_pic.jpg_400x400Q90.jpg_.webp" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><span>￥<a><?php echo $value['price']; ?></a></span></h5>
    <p class="card-text"><?php echo $value['title']; ?></p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item"><input  class="Ran"type="button" name="" value="立即购买" style="float:right;">
			    		<input  class="an shop" type="button" item_id="<?php echo $value['id']; ?>"  name="" value="加入购物车" style="float:right;"></li>
    <!-- <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Vestibulum at eros</li> -->
  </ul> 
  <!-- <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div> -->
</div>
<?php endforeach; endif; else: echo "" ;endif; ?>	
	</table>
</center>
	 <div class="footer" >
	 </div>	 




</body>



<script>

var mySwiper = new Swiper('.swiper-container', {
  autoplay: {
    delay: 1000,//1秒切换一次
  },
});


$(document).ready(function (){
	var page=1;
	var s=true;
       $(window).scroll(function() {
        if ($(document).scrollTop() >= $(document).height() - $(window).height()-30) {
        	if(s){
        		page++;
                $.ajax({
			      type:"post",  
			      data:"page="+page+"&pagenum=4",
			      url:"<?php echo url('index/ajax_page'); ?>",			     
			      dataType:"json",
			      success:function(daa){
			      	if(daa!=0){
			      		$.each(daa,function(k,v){
			           // alert(v.shop_price);
				   		$(".Aa").append(

'<div class="card" style="width: 18rem;">'
+ '<img class="card-img-top" src="/ThinkPHP2/'+v.img+'">'
+' <div class="card-body">'
+'  <h5 class="card-title"><span>￥<a>'+v.price+'</a></span></h5>'
+' <p class="card-text"><?php echo $value['title']; ?></p>'
+' </div>'
+'<ul class="list-group list-group-flush">'
+'<li class="list-group-item"><input  class="Ran"type="button" name="" value="立即购买" style="float:right;">'
+'<input  class="an shop" type="button" item_id="'+v.id+'"  name="" value="加入购物车" '
+' </ul></div>' 

				   			 );     
				        });
			      	}else{
			      		s=false;
			      	}			        
			      }		
			    });
        	} 			
        }
       });
    });   

$(document).delegate(".shop","click",function () {
     var id=$(this).attr("item_id");

	    $.ajax({
	    	type:"post",
	    	data:"id="+id,
	    	url:"<?php echo url('index/ajax_shop'); ?>",
	    	dataType:"json",
	    	success:function(abc){
	    	 	if (abc==0) {
	    	 		location="<?php echo url('index/index'); ?>";
	    	 	}else if (abc=='1') {
	    	 		alert('添加购物车成功')
	    	 	}else if (abc=='2') {
	    	 		alert('添加购物车失败')
	    	 	}
	    	 }
	    });
	});	
</script>
</html>