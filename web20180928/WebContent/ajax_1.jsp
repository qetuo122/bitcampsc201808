<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>

<script>
	
	$(document).ready(function(){
		
		

		var id = $('#uid').val(); //'coolinhot';
		var pw = $('#upw').val(); //'ppppp';

		
		var udata = {
				id : id,
				pw : pw
		};
		
		
		/* $.ajax('data.jsp',{
			success : function(data){
				$('body').append(data);
			}
		});  */
		
		/* $.ajax({
			url : 'data.jsp',
			
			data : {id:id, pw:pw},
			
			success : function(data){
				$('body').append(data);
			}
		});  */
		
		/* $.get('data.jsp',function(data){
			$('body').append(data);
		}); */
		
		/* $.post('data.jsp',function(data){
			$('body').append(data);
		}); */
		
		
		//$('body').load('data.jsp?id='+id+'&pw='+pw);
		//$('body').load('data.jsp?'+$.param(udata));
		
		
		
		
		/* $.getJSON('dataJson.jsp',function(data){
			$.each(data,function(key, value){
				var htmlstr = '<h1> '+ value.name +' : '+ value.price +'원</h1>'
				$('body').append(htmlstr);
			});
			
		}); */
		
		
		/* $.ajax({
			url : 'dataXML.jsp',
			success : function(data){
				
				$(data).find('product').each(function(){
					var name = $(this).find('name').text();
					var price = $(this).find('price').text();
					var htmlstr = '<h1>'+ name +' : '+ price +'원</h1>'
					$('body').append(htmlstr);
					
				});				
			}
		}); */
		
		/* var data = {
				name : 'cool',
				loc : 'seoul'
		};
		$('<h1></h1>').text($.param(data)).appendTo('body');
		 */
		 
		 
		 $('#my-form').submit(function(event){
			 
			 $('#wrap').load('data.jsp', $(this).serializeArray());
			 
			 event.preventDefault();
			 
			 
		 });
		
		
	});



















</script>
</head>
<body>
<form id="my-form">
<input type="text" id="uid" name="id" value="ryuyj76@naver.com">
<input type="password" id="upw" name="pw" value="test">
<input type="submit">
</form>

<div id="wrap"></div>











</body>
</html>