<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:80:"D:\phpStudy\PHPTutorial\WWW\ThinkPHP2/application/index\view\index\personal.html";i:1546583353;s:79:"D:\phpStudy\PHPTutorial\WWW\ThinkPHP2\application\index\view\public\footer.html";i:1546501691;}*/ ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
	<link href="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet">
	<script src="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link href="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet">

	<title>我的个人中心</title>

</head>
<body>

	<div class="card text-center">
	    <div class="card-header alert alert-danger">我的个人中心 
	    	<a style=" float: right;" href="<?php echo url('index/logout'); ?>" class="badge badge-pill badge-dark">退出</a>

	    	<hr>

	    	<a href="<?php echo url('index/navigation'); ?>" class="btn btn-primary alert alert-danger">购物导航栏</a>
	    	<a href="<?php echo url('index/setmm'); ?>" class="btn btn-primary alert alert-danger">修改登录密码</a>
	    	
	    	<button type="button" class="btn btn-primary alert alert-danger" data-toggle="modal" data-target="#exampleModal">
	    	 设置支付密码
	    	</button>

	    	<a href="<?php echo url('index/site'); ?>" class="btn btn-primary alert alert-danger">我的收货地址</a>
	    	<a href="<?php echo url('index/shopcart'); ?>" class="btn btn-primary alert alert-danger">我的购物车</a>
	    	<!-- <a href="<?php echo url('index/order'); ?>" class="btn btn-primary alert alert-danger">我的订单</a> -->



<!-- 支付密码 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <!-- <div class="modal-header">
        


      </div> -->
      <div class="modal-body">
      	<div class="alert alert-success" role="alert">
			 <h4 class="alert-heading">请设置支付密码</h4>
			  <hr>
	  		<p class="mb-0">初始密码为123456</p>
		</div>
  <!--      <form class="form-inline"> -->
	 	

		<div class="form-group mx-sm-3 mb-2">
		   <label for="inputPassword2" class="sr-only">支付密码</label>
		   <input type="text" name="" value="" class="form-control p1" placeholder="原密码">
		   <input type="password" class="form-control p2" id="inputPassword " placeholder="新密码">
		   <br>
		   <button type="submit" class="btn btn-primary mb-2 abc">确认</button>
		</div>
		
	  			
	
	<!-- 	</form>
 -->

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
       <!--  <button type="button" class="btn btn-primary">保存</button> -->
      </div>
    </div>
  </div>
</div>
<!-- 支付密码 -->


	    	<button type="button" class="btn btn-primary alert alert-danger" data-toggle="modal" data-target="#exampleModalLong">
	    		我的订单状态
			</button>
	    	<font style="float: right;"> <a href="javascript:history.go(-1);" class="btn badge-pill badge-info">返回上一页</a>

</font>  
	    </div>
	   
	    <div class="card-body">
	         <h5 class="card-title">欢迎<h1><?php echo $member['name']; ?><br><font size="">你的余额为:<?php echo $member['balance']; ?></font></h1></h5>
	         			<hr>
	       <!--  <p class="card-text">一个区域</p> --> <a href="<?php echo url('index/home'); ?>"; class="btn btn-primary">去购物</a>

<hr>
	    </div>
	  <!--   <div class="card-footer text-muted">一个区域</div> -->
	</div>

	<div class="myred-img">上传头像</div>
			<input type="file" class="file" value="" style="display: none;">
			<img src="<?php echo $member['img']; ?>" alt="" class="rounded"width="250">

<!-- **************************************************************全部订单************************************-->
<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">全部订单</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

<p>
  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
   待付款
  </button>

    <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample1" aria-expanded="false" aria-controls="collapseExample">
    代发货
  </button>

  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample">
    待收货
  </button>

  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample3" aria-expanded="false" aria-controls="collapseExample">
    待评价
  </button>

</p>
<div class="collapse" id="collapseExample">
  <div class="card card-body">
  	<h4><b>待付款</b></h4>
   <hr>

<?php if(is_array($no_pay) || $no_pay instanceof \think\Collection || $no_pay instanceof \think\Paginator): $i = 0; $__LIST__ = $no_pay;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$value): $mod = ($i % 2 );++$i;if($value['status'] == 1): ?>
    <ul class="list-group">
	  <li class="list-group-item active">订单编号:
	 <?php echo $value['order_sn']; ?>	  	
	  </li>
	  	<?php if(is_array($value['order_sku']) || $value['order_sku'] instanceof \think\Collection || $value['order_sku'] instanceof \think\Paginator): $i = 0; $__LIST__ = $value['order_sku'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>	
	  <li class="list-group-item">
	  
	  	<div class="card" style="width: 23rem;">
		  <img class="card-img-top" src="/ThinkPHP2/<?php echo $val['img']; ?>">
		  <div class="card-body">
		    <h5 class="card-title"><?php echo $val['item_name']; ?></h5>
		    <p class="card-text">
		    	<p class="card-text"><font color="red">￥<b><?php echo $val['price']; ?></b></font>
		    		 <font style="Float:right" >数量:x<?php echo $val['number']; ?></font></p>
		     </p>
		     <?php endforeach; endif; else: echo "" ;endif; ?>
		     <hr>
		     <p class="card-text"><b>合计:<font color="red">￥<?php echo $value['amount']; ?></font></b></p>
			   <form action="<?php echo url('index/payment'); ?>" method="post" class="pay_"  style="display:none;">
					<input type="hide" name="order_sn" value="" class="order_sn">
				</form>
		    <a href="#" class="btn btn-outline-primary pay" site_id="<?php echo $value['order_sn']; ?>">立即付款</a>
		    <a href="#" class="btn btn-outline-danger del"site_id="<?php echo $value['order_sn']; ?>">删除订单</a>
		  </div>
		</div>
		<br>
        <?php endif; endforeach; endif; else: echo "" ;endif; ?>

  </div>

</div>

<div class="collapse" id="collapseExample1">
  <div class="card card-body">
  <h4><b>待发货</b></h4>
   <hr>

<?php if(is_array($no_pay) || $no_pay instanceof \think\Collection || $no_pay instanceof \think\Paginator): $i = 0; $__LIST__ = $no_pay;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$value): $mod = ($i % 2 );++$i;if($value['status'] == 2): ?>
    <ul class="list-group">
	  <li class="list-group-item active">订单编号:
	 <?php echo $value['order_sn']; ?>	  	
	  </li>
	  	<?php if(is_array($value['order_sku']) || $value['order_sku'] instanceof \think\Collection || $value['order_sku'] instanceof \think\Paginator): $i = 0; $__LIST__ = $value['order_sku'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>	
	  <li class="list-group-item">
	  
	  	<div class="card" style="width: 23rem;">
		  <img class="card-img-top" src="/ThinkPHP2/<?php echo $val['img']; ?>">
		  <div class="card-body">
		    <h5 class="card-title"><?php echo $val['item_name']; ?></h5>
		    <p class="card-text">
		    	<p class="card-text"><font color="red">￥<b><?php echo $val['price']; ?></b></font>
		    		 <font style="Float:right" >数量:x<?php echo $val['number']; ?></font></p>
		     </p>
		     <?php endforeach; endif; else: echo "" ;endif; ?>
		     <hr>
		     <p class="card-text"><b>合计:<font color="red">￥<?php echo $value['amount']; ?></font></b></p>
		    <a href="#" class="btn btn-outline-primary">联系卖家</a>
		  </div>
		</div>
		<br>
        <?php endif; endforeach; endif; else: echo "" ;endif; ?>

  </div>
</div>

<div class="collapse" id="collapseExample2">
  <div class="card card-body">
   <h4><b>待收货</b></h4>
   <hr>

<?php if(is_array($no_pay) || $no_pay instanceof \think\Collection || $no_pay instanceof \think\Paginator): $i = 0; $__LIST__ = $no_pay;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$value): $mod = ($i % 2 );++$i;if($value['status'] == 3): ?>
    <ul class="list-group">
	  <li class="list-group-item active">订单编号:
	 <?php echo $value['order_sn']; ?>	  	
	  </li>
	  	<?php if(is_array($value['order_sku']) || $value['order_sku'] instanceof \think\Collection || $value['order_sku'] instanceof \think\Paginator): $i = 0; $__LIST__ = $value['order_sku'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>	
	  <li class="list-group-item">
	  
	  	<div class="card" style="width: 23rem;">
		  <img class="card-img-top" src="/ThinkPHP2/<?php echo $val['img']; ?>">
		  <div class="card-body">
		    <h5 class="card-title"><?php echo $val['item_name']; ?></h5>
		    <p class="card-text">
		    	<p class="card-text"><font color="red">￥<b><?php echo $val['price']; ?></b></font>
		    		 <font style="Float:right" >数量:x<?php echo $val['number']; ?></font></p>
		     </p>
		     <?php endforeach; endif; else: echo "" ;endif; ?>
		     <hr>
		     <p class="card-text"><b>合计:<font color="red">￥<?php echo $value['amount']; ?></font></b></p>
		    <a href="#" class="btn btn-outline-primary">查看物流</a>
		    <a href="#" class="btn btn-outline-warning">延长收货</a>
		    <a href="#" class="btn btn-outline-success">确认收货</a>
		  </div>
		</div>
		<br>
        <?php endif; endforeach; endif; else: echo "" ;endif; ?>

  </div>
</div>

<div class="collapse" id="collapseExample3">
  <div class="card card-body">
    <h4><b>待评价</b></h4>
   <hr>
<?php if(is_array($no_pay) || $no_pay instanceof \think\Collection || $no_pay instanceof \think\Paginator): $i = 0; $__LIST__ = $no_pay;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$value): $mod = ($i % 2 );++$i;if($value['status'] == 4): ?>
    <ul class="list-group">
	  <li class="list-group-item active">订单编号:
	 <?php echo $value['order_sn']; ?>	  	
	  </li>
	  	<?php if(is_array($value['order_sku']) || $value['order_sku'] instanceof \think\Collection || $value['order_sku'] instanceof \think\Paginator): $i = 0; $__LIST__ = $value['order_sku'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>	
	  <li class="list-group-item">
	  
	  	<div class="card" style="width: 23rem;">
		  <img class="card-img-top" src="/ThinkPHP2/<?php echo $val['img']; ?>">
		  <div class="card-body">
		    <h5 class="card-title"><?php echo $val['item_name']; ?></h5>
		    <p class="card-text">
		    	<p class="card-text"><font color="red">￥<b><?php echo $val['price']; ?></b></font>
		    		 <font style="Float:right" >数量:x<?php echo $val['number']; ?></font></p>
		     </p>
		     <?php endforeach; endif; else: echo "" ;endif; ?>
		     <hr>
		     <p class="card-text"><b>合计:<font color="red">￥<?php echo $value['amount']; ?></font></b></p>
		    <a href="javascript:void(0);" class="btn btn-outline-primary">查看物流</a>
		    <a href="javascript:void(0);" class="btn btn-outline-info pj"appraise_id="<?php echo $value['id']; ?>">评价</a>
		  </div>
		</div>
		<br>
        <?php endif; endforeach; endif; else: echo "" ;endif; ?>

	<!-- 提交评价数据 -->
	 <form action="<?php echo url('index/appraise'); ?>" method="post" class="appraise"  >
						<input type="hidden" name="appra" value="" class="appra">
	 </form>

  </div>
</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary"> 保存</button>
      </div>
    </div>
  </div>
</div>
<!-- -----------------------------全部订单----------------------------------- -->
		
<script type="text/javascript">

	//头像
$('.myred-img').click(function(){

		$('.file').trigger("click");
	})
		$('.file').change(function(){
			var fd = new FormData();
			fd.append("img",$('.file').get(0).files[0]);
			fd.append("name",111);
			$.ajax({
				url:"<?php echo url('Index/ajax_photo'); ?>",
				type:"POST",
				processData:false,//告诉jQuery不要去处理发送的数据
				contentType:false,//告诉jQuery不要去设置Content-Type请求
				data:fd,
				datatype:"JSON",
				success:function(d){
					$(".myred-img").html("<img src='"+d+"'/> ");					
				}
			})
		})

//立即付款

$('.pay').click(function(){
		var order_sn=$(this).attr("site_id");
		$(".order_sn").val(order_sn);
		$(".pay_").submit();
})

//评价数据
$('.pj').click(function(){
		var appraise_id=$(this).attr("appraise_id");
	
		$(".appra").val(appraise_id);
	    $(".appraise").submit();
})


$('.del').click(function(){
	var order_sn=$(this).attr("site_id");
	  $.ajax({
              type:"post",
              url:"<?php echo url('index/ajxj_del'); ?>",
              data:"&order_sn="+order_sn,
              success:function(data){
            		if (data==0) {
            			location.href="<?php echo url('index/index'); ?>";
            		}else{
            			if (data==1) {alert("删除成功");
            			location.href="<?php echo url('index/personal'); ?>";	}
            			
            		}
                }
            });
})


//支付密码
$('.abc').click(function(){
	var p1=$(this).siblings(".p1").val();
	var p2=$(this).siblings(".p2").val();
	// alert(p2);
	if (p1==""||p2=="") {
		alert("新旧密码不能为空")
	}else{
	  $.ajax({
              type:"post",
              url:"<?php echo url('index/ajxj_paypaw'); ?>",
              data:"&p1="+p1+"&p2="+p2,
              success:function(data){
            		if (data==0) {
            			location.href="<?php echo url('index/index'); ?>";
            		}else{
            			if (data==1) 
            				{alert("设置成功");
            			location.href="<?php echo url('index/personal'); ?>";
            				}
            			
            		}
                }
            });
	}
})


			
</script>
</body>
</html>