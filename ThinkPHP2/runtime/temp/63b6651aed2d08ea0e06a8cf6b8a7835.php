<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:82:"D:\phpStudy\PHPTutorial\WWW\ThinkPHP2/application/index\view\index\navigation.html";i:1544596532;s:79:"D:\phpStudy\PHPTutorial\WWW\ThinkPHP2\application\index\view\public\footer.html";i:1546501691;}*/ ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
</head>
<style type="text/css">

	* { margin:0; padding:0;}

	ul, li { list-style:none;}

	a { text-decoration:none;}

	.nav { border:2px solid #ccc; border-right:none; overflow:hidden; float:left; margin:100px 0 0 300px;}

	.nav ul li { float:left;}

	.nav ul li a { width:120px; height:40px; text-align:center; line-height:40px; display:block; border-right:2px solid #ccc; background:#eee; color:#666;}

	.nav ul li a:hover{ color:#f00; }



	.nav ul li ul { position:absolute;}

	.nav ul li ul li { float:none;}

	.nav ul li ul li a { border-right:none; border-top:1px dotted #ccc; background:#f5f5f5;}



	.nav ul li ul { position:absolute; display:none;}

	.nav ul li ul li { float:none;}

	.nav ul li ul li a { border-right:none; border-top:1px dotted #ccc; background:#f5f5f5;}

	.nav ul li:hover ul{ display:block; }

	

</style>
<body style="height:2500px">
    <a href="javascript:history.go(-1);" class="btn badge-pill badge-info">返回上一页</a>



	<div class="nav">
  <ul>
			<?php if(is_array($wa) || $wa instanceof \think\Collection || $wa instanceof \think\Paginator): $i = 0; $__LIST__ = $wa;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$value): $mod = ($i % 2 );++$i;?>	
		<li><a href="#"><?php echo $value['name']; ?></a>
      <ul>
           <?php if(is_array($value['son']) || $value['son'] instanceof \think\Collection || $value['son'] instanceof \think\Paginator): $i = 0; $__LIST__ = $value['son'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>	
      	 	 <li><a href="<?php echo url('index/commodity',array('cate_id'=>$val['id'])); ?>"><?php echo $val['name']; ?></a></li>
          <?php endforeach; endif; else: echo "" ;endif; ?>  
        </ul>
    </li>
		<?php endforeach; endif; else: echo "" ;endif; ?>    
  </ul>
</div>


</body>


</html>