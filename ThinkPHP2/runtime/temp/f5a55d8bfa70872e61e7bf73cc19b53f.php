<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:81:"D:\phpStudy\PHPTutorial\WWW\ThinkPHP2/application/index\view\index\commodity.html";i:1544596381;s:79:"D:\phpStudy\PHPTutorial\WWW\ThinkPHP2\application\index\view\public\footer.html";i:1546501691;}*/ ?>
<!DOCTYPE html>
<html>
<link href="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
<head>
	<title></title>
</head>
<style type="text/css">
    /*.active{
        color: #0056b3;
        text-decoration: none;
    }*/
</style>
<body>
    <div class="list-group">
        <a href="javascript:history.go(-1);" class="btn badge-pill badge-info">返回上一页</a>


        <button type="button" class="list-group-item list-group-item-action active"> <a href="<?php echo url('index/personal'); ?>" class="btn btn-primary">个人中心</a>
            <a href="<?php echo url('index/commodity',array('order'=>1,'cate_id'=>$cate_id)); ?>" class="btn btn-primary <?php if($order == 1): ?>active <?php endif; ?>">价格升序</a>
            <a href="<?php echo url('index/commodity',array('order'=>2,'cate_id'=>$cate_id)); ?>" class="btn btn-primary <?php if($order == 2): ?>active <?php endif; ?>">价格降序</a>
            <a href="<?php echo url('index/commodity',array('order'=>3,'cate_id'=>$cate_id)); ?>" class="btn btn-primary <?php if($order == 3): ?>active <?php endif; ?>">销量升序</a>
        </button>
        <button type="button" class="list-group-item list-group-item-action">
            <?php if(is_array($shop_commodity) || $shop_commodity instanceof \think\Collection || $shop_commodity instanceof \think\Paginator): $i = 0; $__LIST__ = $shop_commodity;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$value): $mod = ($i % 2 );++$i;?>
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="/ThinkPHP2/<?php echo $value['img']; ?>" alt="Card image cap">
                <div class="card-body">

                     <h5 class="card-title"><font style="color: red">￥</font><?php echo $value['price']; ?></h5>
 
                    <p class="card-text"><?php echo $value['title']; ?></p> <a href="#" class="btn btn-primary">点击购买</a>

                </div>
            </div>
        </button>
        <button type="button" class="list-group-item list-group-item-action">
            <?php endforeach; endif; else: echo "" ;endif; ?>

           
        </button>
        <button type="button" class="list-group-item list-group-item-action" disabled>
            <a href="<?php echo url('index/navigation'); ?>" class="btn btn-primary">点击返回</a>
</button>
    </div>
</body>
</html>