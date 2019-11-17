<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use think\Request;
use think\Cookie;

class Index extends Controller
{   
    
    public function index(){
    	
       return $this->fetch();  	
    }
  
    public function ajax_index(){
    	$request=Request::instance();
    	$username=$request->param('txt');
    	$password=md5($request->param('paw'));
        
        $member=Db::name('yh')->where('name',$username)->find();

        if($member){
            if($member['password']==$password){
                Cookie::set("username",$username,3600*24*7);
            	echo 'logo';
            }else{
            	echo 'c';
            }
        }else{
        	echo 'b';
        }
    }


	 public function ajax_logoin(){
    //注册
	    	$request=Request::instance();
	    	$name=$request->param('name');
	    	$password_txt=$request->param('password_txt');
	    	$password_txt2=$request->param('password_txt2');
	    	$email=$request->param('email');
	     

          $data['name']=$name;
          $data['password']=md5($password_txt);
          $data['email']=$email;
	      $user=Db::name('yh')->insert($data);

	        if(!$user){
	            	echo "no";
	            }else{
	            	echo "ok";
	            }
	        }

        public function home(){
            /*首页*/
            $member = Db::name('item')->order('id')->limit(4)->select();
            $this -> assign('mem',$member);


            $member=Db::name('item_cate')->where('pid',0)->select();

          foreach ($member as $key => $value) {
              $row=Db::name('item_cate')->where('pid',$value['id'])->select();
              $member[$key]['son']=$row;
          } 
        $this -> assign('wa',$member);    
            return $this->fetch();   
        }
    

    public function ajax_page(){
        $request=Request::instance();
        $page=$request->param('page');
        $pagenum=$request->param('pagenum');


        $member = Db::name('item')->order('id')->limit(($page-1)*$pagenum.",$pagenum")->select();
        echo json_encode($member);
       
    }  

    public function personal(){
      //个人中心页面
        $username=Cookie::get("username");

//代付款
        $no_payment['member_id']=$username;
        // $no_payment['status']=1;
        $no_pay=Db::name('order')->where($no_payment)->select();
      
 
        foreach ($no_pay as $key => $value) {
            $cat_pay=Db::name('order_sku')->where('order_id',$value['id'])->select();
            $no_pay[$key]['order_sku']=$cat_pay;
// dump($no_pay);exit;
        }
      
          $this -> assign('no_pay',$no_pay);    
 // 详情        
         
        if($username){
            $member=Db::name('yh')->where("name",$username)->find();
            $this -> assign('member',$member);
            return $this->fetch(); 
        }else{
            $this->redirect("index/index");
        }        

    }


//删除订单ajxj
   public function ajxj_del(){
    $username=Cookie::get("username");
    $request=Request::instance();
    $order_sn=$request->param('order_sn');
    // dump($order_sn);exit;
       if ($username=="") {
        echo 0;
      }else{
       $result=Db::name('order')->where('order_sn',$order_sn)->delete();
        echo 1;
      }

   }

   


   public function logout(){
   cookie(null);
    //跳转页面
    $this->redirect('index/index');
    }


    public function navigation(){
        /*导航栏*/
          $member=Db::name('item_cate')->where('pid',0)->select();

          foreach ($member as $key => $value) {
              $row=Db::name('item_cate')->where('pid',$value['id'])->select();
              $member[$key]['son']=$row;
          } 
          // dump($member);exit;
        $this -> assign('wa',$member);    
       return $this->fetch();   
    }

    public function shopcart(){
            /*购物车页*/
        $username=Cookie::get("username");
        $member=Db::name('cart')->where('session_id',$username)->select();
        $this -> assign('car',$member);
        // dump($member);exit();
         return $this->fetch();   
    }

    public function ajax_shop(){
        $request=Request::instance();
        $item_id=$request->param('id');
        $username=Cookie::get("username");
        if($username){
                 $member=Db::name('item')->where("id",$item_id)->find();
                 $where['item_id']=$item_id;
                 $where['session_id']=$username;
                 $cart=Db::name('cart')->where($where)->find();
                if($cart){
                     $result=Db::name('cart')->where($where)->setInc('number');
                }else{
                     $data['session_id']=$username;
                     $data['item_id']=$item_id;
                     $data['item_name']=$member['title'];
                     $data['price']=$member['price'];
                     $data['img']=$member['img'];
                     $data['number']=1;
                     $result=Db::name('cart')->insert($data);
                }
                
                if($result){
                    echo 1;
                }else{
                    echo 2;
                }
        }else{
            echo 0;
        }        
    }


    public function ajax_add(){
        $request=Request::instance();
        $item_id=$request->param('id');
        $result=Db::name('cart')->where('id',$item_id)->setInc('number');   
        if($result){
            echo 1;
        }else{
            echo 0;
        } 
    }


    public function ajax_min(){
        $request=Request::instance();
        $item_id=$request->param('id');
        /*判断number大于1就执行减法
        小于不执行*/
        
        $result=Db::name('cart')->where('id',$item_id)->find();
         $num=$result['number'];
        
        if ($num>1) {
            $result=Db::name('cart')->where('id',$item_id)->setDec('number');   
        if($result){
            echo 1;
        }else{
            echo 0;
        } 
           
        }
        
    }



    public function ajax_photo(){
      $username=Cookie::get("username");
      if($username){
          $file = request()->file('img');
          if($file){
              $basename = Request::instance()->root();
             if (pathinfo($basename, PATHINFO_EXTENSION) == 'php') {
                $basename = dirname($basename);
             }
            $year = date('ymd/');

            $info = $file->move(ROOT_PATH.'/uploads',$year.$_FILES['img']['name']);
           $NM= $basename.'/uploads/'.$year.$_FILES['img']['name'];
            
            if ($info) {
              //成功上传,获取信息
              //输出jpg

              $data['img']=$NM;          
              $result=Db::name('yh')->where('name',$username)->update($data);
              if($result){
                 echo $basename.'/uploads/'.$year.$_FILES['img']['name'];
              }else{
                echo 0;//上传成功
              }
              
            }else{
              //上传失败
              echo $file->getError();
              }
          }
      }else{
         echo 3;//重定向
      }    
    }
    public function commodity(){
          $request=Request::instance();
          $cate_id=$request->param('cate_id');
          $order=$request->param('order');
          if($order==1){
             $or='price';
          }else if($order==2){
             $or='price desc';//降序
          }else if($order==3){
             $or='sales';
          }else if($order==''){
             $or='id';
          }


          $shop_commodity=Db::name('item')->where('cate_id',$cate_id)->order($or)->select();
          $this -> assign('cate_id',$cate_id);
          $this -> assign('order',$order);//判断显示哪个颜色
          $this -> assign('shop_commodity',$shop_commodity);

         return $this->fetch();   
    }

    //修改密码项
     public function setmm(){
                   
      return $this->fetch();     
     }

   public function ajax_newpaw(){
        $username=Cookie::get("username");
        $request=Request::instance();
        $original_paw=$request->param('original_paw');
        $new_paw=md5($request->param('new_paw'));
        $new_paw2=md5($request->param('new_paw2'));
        $result=Db::name('yh')->where('name',$username)->find(); 

        if ($username=="") {
          echo 0;
        }elseif ($result['password']==md5($original_paw)) {
          $data['password']=$new_paw;          
           $result=Db::name('yh')->where('name',$username)->update($data);
          echo 1;
        }elseif ($result['password']!=md5($original_paw)) {
         echo 2;
        };
       
   }


   //收货地址
  public function site()
   {  
      $username=Cookie::get("username");
      $member = Db::name('address')->where('name',$username)->select();
      $this -> assign('dz',$member);    
    return $this->fetch();     
   }

   public function ajxj_place(){
      $username=Cookie::get("username");
      $request=Request::instance();
      $consignee=$request->param('consignee');
      $phone=$request->param('phone');
      $province=$request->param('province');
      $district=$request->param('district');
      $detailed=$request->param('detailed');
      // $result=Db::name('address')->where('consignee',$username)->find();
      $data['name']=$username;
      $data['consignee']=$consignee;
      $data['tel']=$phone;
      $data['province']=$province;
      $data['city']=$district;
      $data['address']=$detailed;

     if ($username=="") {
        echo 0;
     }else{
       $result=Db::name('address')->insert($data);
        echo 1;
     }
   }

  public function ajxj_update(){
      $username=Cookie::get("username");
      $request=Request::instance();
      $consignee1=$request->param('consignee1');
      $phone1=$request->param('phone1');
      $province1=$request->param('province1');
      $district1=$request->param('district1');
      $detailed1=$request->param('detailed1');
      $id=$request->param('id');
      $tacitly=$request->param('tacitly');

    // $id=Db::name('address')->where('id', $id)->find();
   

   
      // $data['name']=$username;
      $data['consignee']=$consignee1;
      $data['tel']=$phone1;
      $data['province']=$province1;
      $data['city']=$district1;
      $data['address']=$detailed1;

      if ($username=="") {
        // echo "111";exit;
        echo 0;
      }else{
             // echo "2222";exit;
          if ($tacitly=='true') {
            $data['is_default']=1;
            Db::name('address')->where('name',$username)->setField('is_default',2);
            $result=Db::name('address')->where('id', $id)->update($data);
            if($result){
              echo 1;
            }else{
              echo 2;
            }
         }else{
            $data['is_default']=2;
            $address=Db::name('address')->where('id', $id)->find();
            if($address['is_default']==1){
              $where['name']=$username;
              $where['id']=array('neq',$id);
              $a=Db::name('address')->where($where)->find();
              Db::name('address')->where('id',$a['id'])->setField('is_default',1);
             
            }
             $result=Db::name('address')->where('id', $id)->update($data);
             if($result){
               echo 1;
             }else{
              echo 2;
             }
              
          }
      }
    }




  /*删除地址*/
   public function ajxj_id_del(){
      $username=Cookie::get("username");
      $request=Request::instance();
      $id_del=$request->param('id_del');

       if ($username=="") {
        echo 0;
      }else{
       $result=Db::name('address')->where('id',$id_del)->delete();
        echo 1;
      }
   }


   /*默认地址*/
   public function ajxj_tacitly(){
      $username=Cookie::get("username");
      $request=Request::instance();
      $tacitly=$request->param('tacitly');
      $result=Db::name('address')->where('id',$tacitly)->find();

        if ($result['is_default']==1) {
          echo 1;
        }else if ($result['is_default']==2) {
         echo 0;
        }
   }




   /*订单中心*/
 public function order(){  
    $username=Cookie::get("username");
    if ($username=="") {
        $this->redirect("index/index");
      }else{
          $request=Request::instance();
          $ids=$request->param()['one'];
          // dump($ids);exit;
           $where['id']=array('in',$ids);/*条件查询数组里面的索引东西*/
           // dump( $where['id']);exit;
           $shop_goods = Db::name('cart')->where($where)->select();
           // dump($shop_goods);exit;
           // dump($shop_goods);exit;
           $sum=0;
           foreach ($shop_goods as $key => $value) {
              $sum=$sum+$value['price']*$value['number'];
             
           }
           // dump($sum);exit;
            $this -> assign('shop_goods',$shop_goods); 
            $this -> assign('sum',$sum); 
            $this -> assign('ids',json_encode($ids)); 
            

            /*下面这里是收获人和地址*/
          $member = Db::name('address')->where('name',$username)->order('is_default')->select();
          // dump($member);exit;
          $this -> assign('dz',$member); 
         

         /*多个条件查询用数组,where*/
         $wher['is_default']=1;
         $wher['name']=$username;
         $show = Db::name('address')->where($wher)->find();
   
          $this -> assign('show',$show); 
        return $this->fetch();     
      }
   }

   public function ajxj_order(){
   Db::transaction(function(){
      $username=Cookie::get("username");
      $request=Request::instance();
      $person=$request->param('person');
      $ids=json_decode($request->param('ids'),true);
     
      // dump($username);exit;
      if ($username==""){
        $this->redirect("index/index");
      }else{
     
        $result=Db::name('address')->where('id',$person)->find();
      
      /*购物车查询*/
        $cart["id"]=array('in',$ids); 
        $cart_ = Db::name('cart')->where($cart)->select();
        
        // $D= date('YmdHis').rand(100000, 999999);
        /*生成日期时间订单号*/
        $ord_number= date('YmdHis').substr(implode(NULL,array_map('ord',str_split( substr(uniqid(), 7, 13) , 1))), 0, 8);
         $sum=0;
           foreach ($cart_ as $key => $value) {
              $sum=$sum+$value['price']*$value['number'];             
           };

        //订单
        $order['order_sn']=$ord_number;
        //用户id
        $order['member_id']=$result['name'];
        //总价
        $order['amount']=$sum;
        //留言备注
        // $order['remark']=;
        //地址
        $order['address']=$result['province'].$result['city'].$result['county'].$result['address'];
        //时间
        $order['create_time']=time();
        $order['update_time']=time();
        //收货人电话
        //收货人电话
        //用户id
        $order['address_id']=$result['id'];
        //支付时间
         $order['pay_time']=0;
        //收货人电话
        $order['tel']=$result['tel'];
        //收货人
        $order['consignee']=$result['consignee'];
        $order_id=Db::name('order')->insertGetId($order);


     if ($result!='') {
          foreach ($cart_ as $key => $value) {
              $cart_id[]=$value['id'];
                    
           };
        // $result=Db::name('order_sku')->insert($order);
        $cart_id2["id"]=array('in',$cart_id);
        
        $result= Db::name('cart')->where($cart_id2)->select();
             

             foreach ($result as $key => $value) {
                $order_suk['order_id']=$order_id;
                $order_suk['item_id']=$value['item_id'];
                $order_suk['item_name']=$value['item_name'];
                $order_suk['number']=$value['number'];
                $order_suk['price']=$value['price'];
                $order_suk['img']=$value['img'];
                $result2=Db::name('order_sku')->insert($order_suk);
             }
          //删除购物车里面的
        $result=Db::name('cart')->where($cart_id2)->delete();

          echo $order['order_sn'];

       }else{
          echo 2;
           //  dump($cart_);exit;
          
           }      
      }
    });
  }

   public  function payment(){
    $username=Cookie::get("username");
      $request=Request::instance();
      $order_sn=$request->param('order_sn');
      // dump($order_sn);exit;
      $result=Db::name('order')->where('order_sn',$order_sn)->find();
      // dump($result);exit;
      $this -> assign('payment_id',$result); 
     $this -> assign('order_sn',$order_sn); 
     $blance=Db::name('yh')->where('name',$username)->find(); 
     // dump($blance);exit;
      $this -> assign('blance',$blance); 

      // if (username=="") {
      //   $this->redirect("index/index");
      // }else{
        
      // }

      return $this->fetch();     
   }

   public function ajxj_pay()
   {
    $s=0;
     $username=Cookie::get("username");
      $request=Request::instance();
      $paw=$request->param('paw');
      $order_sn=$request->param('order_sn');
      // dump($username);exit;
      

      if ($username=="") {
        $this->redirect("index/index");
      }else{
       $result=Db::name('yh')->where('name',$username)->find(); 
      // dump($result);exit;
         if ($result['pay_paw']==$paw) {
            $result2=Db::name('order')->where('order_sn',$order_sn)->find();
           // dump($result2['amount']);exit;
              $a=$result['balance'];
              $b=$result2['amount'];
             
              if ($a>$b) {
                 $s=$a-$b;
                  $data['balance']=$s;
                  $dat['status']=2;
                  $result=Db::name('yh')->where('name',$username)->update($data);
                   $result3=Db::name('order')->where('order_sn',$order_sn)->update($dat);
                  echo 1;

              }else{
                echo 3;
                //余额不足
              }
              
             
         }else{
          echo 2;
          //密码错误
         }
      }


   }


  public function appraise(){
      $username=Cookie::get("username");
      $request=Request::instance();
      $appraise_id=$request->param('appra');
      // dump($appraise_id);exit;
      $result=Db::name('order_sku')->where('order_id',$appraise_id)->select();
      $this -> assign('appri_id',$result); 
       return $this->fetch();     
   }


//评价图片上传
    // public function ajax_photo(){
    //   $username=Cookie::get("username");
    //   if($username){
    //       $file = request()->file('img');
    //       if($file){
    //           $basename = Request::instance()->root();
    //          if (pathinfo($basename, PATHINFO_EXTENSION) == 'php') {
    //             $basename = dirname($basename);
    //          }
    //         $year = date('ymd/');

    //         $info = $file->move(ROOT_PATH.'/uploads',$year.$_FILES['img']['name']);
    //        $NM= $basename.'/uploads/'.$year.$_FILES['img']['name'];
            
    //         if ($info) {
    //           //成功上传,获取信息
    //           //输出jpg

    //           $data['img']=$NM;          
    //           $result=Db::name('item_comment')->where('name',$username)->update($data);
    //           if($result){
    //              echo $basename.'/uploads/'.$year.$_FILES['img']['name'];
    //           }else{
    //             echo 0;//上传成功
    //           }
              
    //         }else{
    //           //上传失败
    //           echo $file->getError();
    //           }
    //       }
    //   }else{
    //      echo 3;//重定向
    //   }    
    // }

  public function ajxj_appraise(){
      $username=Cookie::get("username");
      $request=Request::instance();
      $judge=$request->param('judge');
      $appraise_txt=$request->param('appraise_txt');
      $item_id=$request->param('item_id');
      $order_id=$request->param('order_id');
      // dump($item_id);exit;
      $appraise_['item_id']=$item_id;
      $appraise_['member_id']=$username;
      $appraise_['order_id']=$order_id;
      $appraise_['info']=$appraise_txt;
      $appraise_['add_time']= date('YmdHis');
      $appraise_['score']= $judge;
      // dump($appraise_);exit;
    if ($username="") {
      echo 0;
    }else{
       $result=Db::name('item_comment')->insert($appraise_);

       $aa['order_id']=$order_id;
       $aa['item_id']=$item_id;
       // dump($aa);exit;
       $t['personal_id']=2;
       $result=Db::name('order_sku')->where($aa)->update($t);
      //  $z['status']=5;

       
      //  $result2=Db::name('order_sku')->where($t)->select();
      // dump($result2);exit;


      //  $result=Db::name('order')->where('id',$order_id)->update($z);
       echo 1;

    }

 }


 //支付密码
  public function ajxj_paypaw()
   {
     $username=Cookie::get("username");
      $request=Request::instance();
      $p1=$request->param('p1');
      $p2["pay_paw"]=$request->param('p2');

      if ($username=="") {
          echo 0;
         } else{
          $result=Db::name('yh')->where('name',$username)->update($p2);
          echo 1;
         } 

     }


}



