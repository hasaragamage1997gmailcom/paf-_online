$(document).on("click","#btnlogin",function()
{
	
	var result = isValidFormLogin();
	if(result=="true")
		{ $("#fromlogin").submit();  }
	else
		{  $("#divStvMsglogin").html(result);  }
	
});


function isValidFormLogin()
{
	if($.trim($("#txtUserName").val())=="")
	{ return "Enter UserName";  }
	
	if($.trim($("#txtPassword").val())=="")
	{ return "Enter Password";  }
	
	return true;
}


function isValidFormItem()
{
	if($.trim($("#txtItemName").val())=="")
	{ return "Enter Item Name";  }
	
	if($.trim($("#txtItemDesc").val())=="")
	{ return "Enter Item Desc";  }
	
	return true;
	
}
//--save--
$(document).on("click","#btnsave",function()
		{
			
			var result = isValidFormItem();
			if(result=="true")
				{ $("#formItem").submit();  }
			else
				{  $("#divStvMsgItem").html(result);  }
			
		});

//--edit--
$(document).on("click","#btnEdit",function()
		{
			
			$("#hidMode").val("update");
			$("#hidID").val($(this).attr("param"));
			$("#txtItemName").val($(this).closest("tr").find('td:eq(1)').text());
			$("#txtItemName").val($(this).closest("tr").find('td:eq(2)').text());
			
		});

//--remove--
$(document).on("click","#btnremove",function()
		{
	$("#hidMode").val("remove");
	$("#hidID").val($(this).attr("param"));
			var res = confirm("Are you sure?");
			if(res=="true")
				{ $("#formItem").submit();  }
			else
				{  $("#divStvMsgItem").html(result);  }
			
		});

