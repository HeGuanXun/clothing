	//登录
	$(document).ready(function(){
		 $("#submit").click(function(){
		 	alert("abc");
	    	   var userName = $("#userName").val();
	  		   var passWord = $("#passWord").val();
	  		   var checkCode = $("#checkCode").val();
	  		   if(userName== "" &&passWord != null){ 
	  			   	alert("用户名必须！");
	  			   	return false;
	  			   }
	  		 	if(passWord==""&& userName!=null){		   	   
			   		alert("密码名必须！");
			   	 	return false;
			   	   }
	  		 	if(userName==""&&passWord==""){
	  		 		alert("用户或密码不能为空！");
	  		 	 	return false;
	  		 	}
	  		 	if(checkCode="" && userName!=null && passWord != null){
	  		 		alert("验证码必须！");
	  		 		return false;
	  		 	}
	  		 	
	  		  $.ajax({
					   url:"index",
					   data:{"userName":userName,"passWord":passWord, "checkCode":checkCode},
					   catche:false,
					   type:"post",
					   dataType:"json",
					   error:function(){"网络出错"},
					   success:function(data){						   
						   if(data.error == "fail"){
							   alert("请输入正确的验证码！")
							   return false;
						   }else{
							   if(data == null){
								   alert("请输入正确的用户名或者密码");//登录失败
								   return false;
							   }
						   }						   						  										 
		    			 }		            			   
				   	});
	  		 	  return true;
	       });
	  	});
	      
	
	//加载验证码
	function loadCode(){
		document.getElementById("img").src="login/checkCode"+"?"+new Date().getTime();
	}

	//验证码验证
	$(document).ready(function(){
	  $("#checkCode").mouseout(function(){
		   var checkCode = $("#checkCode").val();
		   if(checkCode!=""){
			 $.ajax({
			   url:"login/checkCode",
			   data:{"checkCode":checkCode},
			   dataType:"json",
			   catche:false,
			   error:function(){"网络出错"},
			   success:function(data)
			   {		  				 
				 	if(data.checkCode=="验证码错误!")
				 	{
				 		alert(data.checkCode);  	  				 		
				 	}			        					
				  }			           			   
		   	});	   
		   }			   
	  	});
	  });
  	
  	
  	
      