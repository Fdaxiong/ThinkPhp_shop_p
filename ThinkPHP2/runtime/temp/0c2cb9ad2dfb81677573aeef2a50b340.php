<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:80:"D:\phpStudy\PHPTutorial\WWW\ThinkPHP2/application/index\view\index\appraise.html";i:1545809133;}*/ ?>
<!DOCTYPE html>
<html>
<head>
	<title>评价</title>
	<meta charset="utf-8">
	<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
	<script src="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link href="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet">
</head>
<body>

<div class="card">
  <h5 class="card-header">评价</h5>
  <div class="card-body">
   
  </div>

  	
</div>
<?php if(is_array($appri_id) || $appri_id instanceof \think\Collection || $appri_id instanceof \think\Paginator): $i = 0; $__LIST__ = $appri_id;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$value): $mod = ($i % 2 );++$i;if($value['personal_id'] == 1): ?>
 <li class="list-group-item list-group-item-action disabled">
  	<table>
  		<tbody>
  			<tr>
  				<td style="width:250px">
	  				<div class="card" style="width: 18rem;">
			  		<img class="card-img-top" src="/ThinkPHP2/<?php echo $value['img']; ?>">
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

<!-- 评价选择 -->
  <div class="card border-warning mb-3" style="max-width: 100rem;">
  <div class="card-header">
		 <input type="radio" name="radio" value="1" class="radio">好评
		 <input type="radio" name="radio" value="2" class="radio">中评
		 <input type="radio" name="radio" value="3" class="radio">差评
  </div>
  <div class="card-body text-warning">
  <!-- 	上传图片 -->
    		<div class="myred-img">上传图片</div>
			<input type="file" class="file" value="" style="display: none;">
			<img src="" alt="" class="rounded">

<!-- 评价文字 --> 
	    <div class="form-group">
	    	<textarea class="form-control" placeholder="在这里输入评价" id="exampleFormControlTextarea1" rows="3"></textarea>
  		</div>
   </div>
  		<a class="btn btn-primary publish" href="javascript:void(0);" role="button"  item_id="<?php echo $value['item_id']; ?>"
  		order_id="<?php echo $value['order_id']; ?>">发布</a>
    </div>
     <?php endif; endforeach; endif; else: echo "" ;endif; ?>




</body>

<script type="text/javascript">
	//上传图片的
	$('.myred-img').click(function(){

		$('.file').trigger("click");
	})
		$('.file').change(function(){
			var fd = new FormData();
			fd.append("img",$('.file').get(0).files[0]);
			$.ajax({
				url:"<?php echo url('Index/ajax_photo'); ?>",
				type:"POST",
				processData:false,//告诉jQuery不要去处理发送的数据
				contentType:false,//告诉jQuery不要去设置Content-Type请求
				data:fd,
				datatype:"JSON",
				success:function(d){
					$(".rounded").attr("src",d);					
				}
			})
		})

	//发布按钮
	$('.publish').click(function(){
	// var order_sn=$(this).attr("site_id");
	var judge=$(this).prev().prev().find('.radio:checked').val();
	var appraise_txt=$(this).prev().find('.form-control').val();
	var item_id=$(this).attr("item_id");
	var order_id=$(this).attr("order_id");

	if (!judge) {
		alert("请为店铺打分(*￣︶￣)  好评,中评,差评")
	}else{
		  $.ajax({
              type:"post",
              url:"<?php echo url('index/ajxj_appraise'); ?>",
              data:"judge="+judge+"&appraise_txt="+appraise_txt+"&item_id="+item_id+"&order_id="+order_id,
              success:function(data){
            		if (data==0) {
            			location.href="<?php echo url('index/index'); ?>";	
            		}else if (data==1) {
            			alert("哇哦,评价完成")
            		}else{
            			alert("评价出错")
            		}

                }
            });
	}


	
})



</script>
</html>