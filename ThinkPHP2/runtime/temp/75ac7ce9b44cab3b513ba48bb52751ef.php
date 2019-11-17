<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:80:"D:\phpStudy\PHPTutorial\WWW\ThinkPHP2/application/index\view\index\shopcart.html";i:1545272146;}*/ ?>
<!DOCTYPE html>
<html>
<head>
	<title>购物车页面</title>
	<script src="/ThinkPHP2//js/jquery-3.3.1.js"></script>
	<link rel="stylesheet" type="text/css" href="/ThinkPHP2//css/bootstrap-4.0.0-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/ThinkPHP2//css/Fda.css">
	<style>
	.login {
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
		border-radius:20px;"/*改变圆角，圆形按钮*/
		}
		
	</style>
</head>
<body>
<form action="<?php echo url('index/order'); ?>" method="post" class="form">
    <center>
        <div>
            <h1><p>购物车</p></h1>
        </div>
        <table border="1" width="50%">
            <thead>
                <tr align="center" style="background-color: #EDE387">
                    <th>商品</th>
                    <th>单价</th>
                    <th>数量</th>
                </tr>
            </thead>
            <tbody style="background-color: #EDEDED" class="shop-group-item">

	<?php if(is_array($car) || $car instanceof \think\Collection || $car instanceof \think\Paginator): $i = 0; $__LIST__ = $car;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$value): $mod = ($i % 2 );++$i;?>
                <tr>
	                <td>
	                    <input type="checkbox" name="one[]" value="<?php echo $value['id']; ?>" class="Aox goodsCheck">	
	                      	<span><img src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2424981735/TB2ys1_nJknBKNjSZKPXXX6OFXa_!!2424981735-0-item_pic.jpg_580x580Q90.jpg" alt="" height="100" width="100" ><?php echo $value['item_name']; ?></span>	
	                </td>
                	<td align="center" act="<?php echo $value['price']; ?>">￥<b class="price"><?php echo $value['price']; ?></b></td>
	                <td align="center">	<a href="javascript:void(0);" class="minus min" tem_id="<?php echo $value['id']; ?>">-</a>
							<span class="num"><?php echo $value['number']; ?></span>		
							<a href="javascript:void(0);" class="plus add" tem_id="<?php echo $value['id']; ?>">+</a>
	                </td>
                </tr>
	<?php endforeach; endif; else: echo "" ;endif; ?>	               
            </tbody>
            <tr style="background-color:  #CCFC62">
                <th>
                    <input type="checkbox" name="onee" value="" class="Sox">全选</th>
                <th>
                    <center>合计：￥<span class="sum">0</span></center>
                </th>
                <td align="center">
                    <button type="button" class="login">结算 <span class="badge badge-light"></span></button>
                </td>
            </tr>
        </table>
        <div></div>
        <div></div>
    </center>
</form>
</body>
</html>
 <script>

$(".login").click(function(){
	//知道有没有选择商品,包括选择框数量
var size=$(".goodsCheck:checked").length;
// alert(size);
if (size>=1) {
    $(".form").submit();
}else{
	alert("你还没有选择商品");
}
})



$(".Sox").click(function () {
	    // alert(1);
	    if ($(".Sox").prop("checked")) {
	        $(".Aox").prop("checked", true);

	    } else {
	        $(".Aox").prop("checked", false);
	    }
	    sum();
	});

	$(".goodsCheck").click(function () {
	    sum();
	});

	function sum() {
	    var total = 0;
	    $(".num").each(function () {
	        var num = parseInt($(this).text());
	        var price = parseInt($(this).parent().prev().attr("act"));
	        if ($(this).parent().prev().prev().find(".goodsCheck").prop("checked")) {
	            total = total + num * price;
	        }

	    })
	    $(".sum").text(total);
	}

	// $(".minus").click(function () {
	//     var t = parseInt($(this).parent().find('.num').text());
	//     if (t > 1) {
	//         $(this).parent().find('.num').text(t - 1);
	//     }
	//     sum();

	// });

	// $(".plus").click(function () {
	//     var t = $(this).parent().find('.num');
	//     t.text(parseInt(t.text()) + 1);

	//     sum();

	// });
$(document).delegate(".add","click",function () {
	var id=$(this).attr("tem_id");
	var t = $(this).parent().find('.num');
	    	 $.ajax({
		      type:"post",
		      url:"<?php echo url('index/ajax_add'); ?>",
		      data:"id="+id,
		      dataType:"json",
		      success:function(data){
		      	if (data==1) {
	   			 t.text(parseInt(t.text()) + 1);
	   			  sum();	
		      	}else if (data==0) {
		      		alert('加一出错')
		      	}
		      }
		    });
	});


$(document).delegate(".min","click",function () {
	var id=$(this).attr("tem_id");	
	var n=$(this).parent().find('.num');
	var t = parseInt(n.text());
					
	    	 $.ajax({
		      type:"post",
		      url:"<?php echo url('index/ajax_min'); ?>",
		      data:"id="+id,
		      dataType:"json",
		      success:function(data){
		      	if (data==1) {
	   			
	    		if (t > 1) {
	         		n.text(t - 1);
	    				}
 				sum();
		      	}else if (data==0) {
		      		alert('减一出错')
		      	}
		      }
		    });
	});
</script>
