<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:77:"D:\phpStudy\PHPTutorial\WWW\ThinkPHP2/application/index\view\index\order.html";i:1545378090;}*/ ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
	<script src="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link href="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet">
	<title>我的订单中心 </title>
</head>
<body>
 

<div class="list-group">
  <div class="list-group-item list-group-item-action active">
   确认订单
  
   <a class="btn btn-primary btn-dark" href="<?php echo url('index/personal'); ?>" role="button" style="Float:right">个人中心</a>

  </div>
  <a href="#collapseExample" data-toggle="collapse"   class="list-group-item list-group-item-action" >
  	<b>收货人:</b><b><?php echo $show['consignee']; ?></b>  <b style="margin-left:10%"><?php echo $show['tel']; ?></b><br>
  	<font size="2">收获地址: <?php echo $show['province']; ?><?php echo $show['city']; ?><?php echo $show['county']; ?><?php echo $show['address']; ?></font>
  	<font style="margin-left:90%" color="blue" >>>></font>
  </a> 

<!-- 弹出地址和新地址 ------------------------------------------------------------------------------------------------------------->
		<body>
			<div class="alert alert-danger badge-warning" role="alert">
			</div>	
			<button type="button" class="btn btn-outline-info btn-lg btn-block badge badge-pill badge-warning " >我的收货地址</button>

			<div id="accordion">
		  <div class="card">
		    <div class="card-header alert alert-success" id="headingOne">
		      <h5 class="mb-0">
		        <button class="btn btn-secondary  btn-dark active " data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		         新增收货地址
		        </button>

		         <button  href="#collapseExample" data-toggle="collapse"  class="btn btn-secondary  btn-dark active" >收起</button>
		   
		      </h5>
		    </div>

		    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
		      <div class="card-body">
				       <ul class="list-group">
					  <li class="list-group-item active">我的收货地址</li>
					  <li class="list-group-item">
					  <div class="input-group mb-3">
				  			<div class="input-group-prepend">
				    			<span class="input-group-text " id="inputGroup-sizing-default" >收货人</span>
				  		</div>
				  		<input type="text" class="form-control consignee " aria-label="Default" aria-describedby="inputGroup-sizing-default" name ="consignee">
						</div>
					  </li>
					   <li class="list-group-item">
					  <div class="input-group mb-3">
				  			<div class="input-group-prepend">
				    			<span class="input-group-text " id="inputGroup-sizing-default" >联系电话</span>
				  		</div>
				  		<input type="text" class="form-control phone" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="phone">
						</div>
					  </li>
					   <li class="list-group-item">
					  <div class="input-group mb-3">
				  			<div class="input-group-prepend">
				    			<span class="input-group-text " id="inputGroup-sizing-default" >所在的省份</span>
				  		</div>
				  		<input type="text" class="form-control province"  aria-label="Default" aria-describedby="inputGroup-sizing-default" name="province">
						</div>
					  </li>
					  <li class="list-group-item">
					  <div class="input-group mb-3">
				  			<div class="input-group-prepend">
				    			<span class="input-group-text " id="inputGroup-sizing-default" >所在的地区</span>
				  		</div>
				  		<input type="text" class="form-control district" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="district">
						</div>
					  </li>
					  <li class="list-group-item">
					  <div class="input-group mb-3">
				  			<div class="input-group-prepend">
				    			<span class="input-group-text " id="inputGroup-sizing-default">详细地址</span>
				  		</div>
				  		<input type="text" class="form-control detailed" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="detailed">
						</div>
					  </li>
					  <li class="list-group-item">
					  	<button type="button" class="btn btn-primary btn-lg btn-block bc" 
					  				>保存</button>
					  </li>
					</ul>
		      </div>
		    </div>
		  </div>

		<!-- 
		  显示自己的收货地址 ---------------------------------------------------------------------------->
		  <?php if(is_array($dz) || $dz instanceof \think\Collection || $dz instanceof \think\Paginator): $i = 0; $__LIST__ = $dz;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$value): $mod = ($i % 2 );++$i;?>	
		<div class="alert alert-info" role="alert" >
		  <h4 class="alert-heading" >我的收货地址 

		 		<!-- <button type="button" class="btn badge-pill btn-success">默认地址</button> -->
		 	
			<input type="checkbox" class="tacitly" tacitly_="<?php echo $value['is_default']; ?>"  <?php if($value['is_default'] == 1): ?>  checked="checked" <?php endif; ?>>默认地址   
		  	<button type="button" class="btn badge-warning bj">编辑地址</button>
		  	<button type="button" class="btn btn-info add" id_="<?php echo $value['id']; ?>">保存地址</button>
		    <button type="button" class="btn btn btn-danger del" id_del="<?php echo $value['id']; ?>">删除地址</button>
		    	
		  </h4>
			 <div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text " id="inputGroup-sizing-default">收货人</span>
			  </div>
			  <input type="text" value="<?php echo $value['consignee']; ?>" class="form-control start consignee1" disabled="disabled" aria-label="Default" aria-describedby="inputGroup-sizing-default">
			</div>

			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="inputGroup-sizing-default">联系电话</span>
			  </div>
			  <input type="text"  value="<?php echo $value['tel']; ?>" class="form-control start  phone1" disabled="disabled" aria-label="Default" aria-describedby="inputGroup-sizing-default">
			</div>

			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="inputGroup-sizing-default">所在的省份</span>
			  </div>
			  <input type="text" value="<?php echo $value['province']; ?>" class="form-control start province1" 	disabled="disabled" aria-label="Default" aria-describedby="inputGroup-sizing-default">
			</div>

			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="inputGroup-sizing-default">所在的地区</span>
			  </div>
			  <input type="text" value="<?php echo $value['city']; ?>" class="form-control start district1" 	disabled="disabled" aria-label="Default" aria-describedby="inputGroup-sizing-default">
			</div>

			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="inputGroup-sizing-default">详细地址</span>
			  </div>
			  <input type="text" value="<?php echo $value['address']; ?>" class="form-control start detailed1" 	disabled="disabled" aria-label="Default" aria-describedby="inputGroup-sizing-default">
			</div> 
		</div>
		 <?php endforeach; endif; else: echo "" ;endif; ?>  
		  </div>
		</div>
		</body>
   	<div class="collapse" id="collapseExample">
	</div>
<!-- 结束弹出默认地址和新增地址 -->

<!-- /*购物车选中商品显示开始*/ -->
<?php if(is_array($shop_goods) || $shop_goods instanceof \think\Collection || $shop_goods instanceof \think\Paginator): $i = 0; $__LIST__ = $shop_goods;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$value): $mod = ($i % 2 );++$i;?>
  <li class="list-group-item list-group-item-action disabled">
  	<table>
  		<tbody>
  			<tr>
  				<td style="width:250px">
	  				<div class="card" style="width: 18rem;">
			  		<img class="card-img-top" src="/ThinkPHP2/<?php echo $value['img']; ?>"alt="Card image cap">
					</div>
				</td>
  				<td style="width:500px" >
  					<p class="card-title" style="margin-bottom:35%"><?php echo $value['item_name']; ?></p>
   			 		<p class="card-text"><font color="red">￥<b><?php echo $value['price']; ?></b></font> 
   			 		 <font style="Float:right" >数量:x<?php echo $value['number']; ?></font></p>
				</td>
  			</tr>
  		</tbody>
  	</table>
  </li>
<?php endforeach; endif; else: echo "" ;endif; ?>
 <!-- /*购物车选中商品显示结束*/ -->

<form action="<?php echo url('index/payment'); ?>" method="post" class="pay"  style="display:none;">
	<input type="hide" name="order_sn" value="" class="order_sn">
</form>

<!--   <a href="#" class="list-group-item list-group-item-action">买家留言</a> -->
  <li href="#" class="list-group-item list-group-item-action disabled">
  <b>买家留言:</b> <input class="form-control" type="text">
  </li>

  <li href="#" class="list-group-item list-group-item-action disabled">
  	<b>合计:<font color="red">￥<?php echo $sum; ?> </font></b>
  	<button type="submit" class="btn btn-danger tj" style="Float:right" site_id="<?php echo $show['id']; ?>">提交订单</button>
  </li>
</div>


<!-- 新增收获地址 -->
<div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
     
    </div>

</body>
<script type="text/javascript">

	$(".tj").click(function(){
		var ids='<?php echo $ids; ?>';
		var person =$(this).attr("site_id");
		
		$.ajax({
				type:"post",
				url:"<?php echo url('index/ajxj_order'); ?>",
				data:"ids="+ids+"&person="+person,
				success:function(data){
					if (data==2) {
						alert("插入失败");
					}else {
						$(".order_sn").val(data);
						$(".pay").submit();

					}
			
		
			}
		});
	})



	
	$(".bc").click(function(){ 
		var consignee = $(".consignee").val();
		//人
		var phone = $(".phone").val();
		//电话
		var province = $(".province").val();
		//省
		var district = $(".district").val();
		//区
		var detailed = $(".detailed").val();
		//详细地址
		// alert(district);
		if (consignee=="" || phone=="" || district=="" || detailed=="") {
		        //判断是否为空
				alert("全部要填写,不能为空")
			}else{			
				  $.ajax({
				      type:"post",
				      url:"<?php echo url('index/ajxj_place'); ?>",
				      data:"consignee="+consignee+"&phone="+phone+"&province="+province+"&district="+district+"&detailed="+detailed,
				      success:function(data){
					    if (data==0) {
					     location.href="<?php echo url('index/index'); ?>";	
					    }else if (data==1) {
					      	alert("新增地址成功");
					      	 	location.reload()
					      
					   } else if (data==2) {
					   		alert("新增地址失败");
					   }   
				    }
				});
			}	
		});

	$(".bj").click(function(){
	 $(this).parent().parent().find(".start").removeAttr("disabled");
	});
	$(".add").click(function(){
	
	$(this).parent().parent().find(".start").attr({"disabled":"disabled"});
	});


/*保存地址触发ajax传数据更新数据库内容*/
// var consignee1 = $(this).parent().parent().find(".consignee1").val();
// 数据库循环出来的东西要用历遍寻找,(上一级上一级的执行)find寻找parent父级
 

	$(".add").click(function(){ 
		var id=$(this).attr("id_");
		var tacitly=$(this).prev().prev().prop("checked");
		var consignee1 = $(this).parent().parent().find(".consignee1").val();
		//人
		var phone1 = $(this).parent().parent().find(".phone1").val();
		//电话
		var province1 = $(this).parent().parent().find(".province1").val();
		//省
		var district1 = $(this).parent().parent().find(".district1").val();
		//区
		var detailed1 = $(this).parent().parent().find(".detailed1").val();
		//详细地址
		// alert(district);
		if (consignee1=="" || phone1=="" || district1=="" || detailed1=="") {
		        //判断是否为空
				alert("全部要填写,不能为空")
			}else{			
				  $.ajax({
				      type:"post",
				      url:"<?php echo url('index/ajxj_update'); ?>",
				      data:"consignee1="+consignee1+"&phone1="+phone1+"&province1="+province1+"&district1="+district1+"&detailed1="+detailed1+"&id="+id+"&tacitly="+tacitly,
				      success:function(data){
					    if (data==0) {
					      location.href="<?php echo url('index/index'); ?>";	
					   } else if (data==1) {
					   	alert("保存地址成功");
					   		 location.reload()
					   } else if (data==2) {
					   	alert("保存地址失败");
					   }  
				    }
				});
			}	
		});

/*删除按钮触发事件删除数据库一个地址------------------------------------------------------------------------------*/

$(".del").click(function(){ 
		var id_del=$(this).attr("id_del");
        	// alert(id_del);return false;
        	  $.ajax({
				      type:"post",
				      url:"<?php echo url('index/ajxj_id_del'); ?>",
				      data:"id_del="+id_del,
				      success:function(data){
					    if (data==0) {
					     location.href="<?php echo url('index/index'); ?>";	
					    }else if (data==1) {
					      	alert("删除地址成功 ~~欧耶 \\(^o^)/'");
					      							location.reload()
					      	 // location.href="<?php echo url('index/site'); ?>";	
					   } else if (data==2) {
					   		alert("删除地址失败 ~~哇哦 ヾ(◍°∇°◍)ﾉﾞ");
					   }   
				    }
				});
		
		});




</script>
</html>