<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%
	
    // ※必要な処理を実装してください

    // 入力値取得

    // 表示するメッセージ用の変数

    // メッセージ作成
    
    //初期メッセージを出力
    String display = ("数値を入力してください");

	//ボタンなどで選択した値を変数に入れている。
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String operator = request.getParameter("operator");
	
	
	//Integer.parseIntやisEmpty()は変数にNULLが入っているとエラーが起きるので、NULLを取り除いている。
	if( !(num1 == null || num2 == null) ){
		if(num1.isEmpty() && num2.isEmpty()){			//入力された数値が両方空なのか見ている
			display = ("数値が両方とも未入力です");
			
		}else if(num1.isEmpty() || num2.isEmpty()){		//入力された数値が片方でも空なのか見ている
			display = ("数値を入力してください");
			
		}else{
			int num1Count = Integer.parseInt(num1);		//文字列をint型に変換
			int num2Count = Integer.parseInt(num2);
			
			switch(operator){
			case "add":
				display = num1 + "+" + num2 + "=" + (num1Count + num2Count);
				break;
				
			case "sub":
				display = num1 + "-" + num2 + "=" + (num1Count - num2Count);
				break;
				
			case "mul":
				display = num1 + "×" + num2 + "=" + (num1Count * num2Count);
				break;
				
			case "div":
				if((num1Count % num2Count) != 0){
					display = num1 + "÷" + num2 + "=" + (num1Count / num2Count)  + ":あまり" + (num1Count % num2Count);
					
				}else{
					display = num1 + "÷" + num2 + "=" + (num1Count / num2Count);
					
				}
				break;
			
			}
			
		}
	}
	
	
		
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
    width: 80px;
}
</style>
</head>
<body>

  <h1>Java基礎 - 演習問題3(発展)</h1>
  <h2>四則演算</h2>

  <p>
    <!-- メッセージの表示  -->
    <% out.println(display); %>
    

  </p>

  <form action="javaBasicDev3.jsp" method="post">
    <input type="number" min="1" max="999999" class="number" name="num1">
    <select name="operator">
      <option value="add">＋</option>
      <option value="sub">ー</option>
      <option value="mul">×</option>
      <option value="div">÷</option>
    </select> <input type="number" min="1" max="999999" class="number"
      name="num2">
    <button type="submit">計算</button>
  </form>
</body>
</html>