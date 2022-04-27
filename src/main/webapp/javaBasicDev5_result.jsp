<%@ page import="util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

  <!-- ※下記のコメントを参考に、必要に応じて処理を変更してください  -->
<%

    // 入力値を取得
	request.setCharacterEncoding("UTF-8");
    String text1 = request.getParameter("product1");
    String text2 = request.getParameter("product2");
    String priceAmount1 = request.getParameter("amount1");
    String priceAmount2 = request.getParameter("amount2");
    String rank = request.getParameter("rank");
    
    
    
    
    
 	// 数値に変換
    if(ParamUtil.isNullOrEmpty(priceAmount1)){
    	priceAmount1 = "0";
    }
    
    if(ParamUtil.isNullOrEmpty(priceAmount2)){
    	priceAmount2 = "0";
    }
    if(ParamUtil.isNullOrEmpty(rank)){
    	rank = "0";
    }
    
    int price1 = Integer.parseInt(priceAmount1);
    int price2 = Integer.parseInt(priceAmount2);
    int rankPoint = Integer.parseInt(rank);
    
    
    

    // ポイントを定義
	int point1 = 0;
    int point2 = 0;
    // メソッドを呼んでポイントを取得
    point1 = ParamUtil.getPoint(price1, rankPoint);
    point2 = ParamUtil.getPoint(price2, rankPoint);
    

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5(発展)</title>
<style>
.right {
  text-align: right;
}
</style>
</head>
<body>
  <h1>Java基礎 - 演習問題5(発展)</h1>

  <h2>計算結果</h2>

  <table border="1">
    <tr>
      <th>商品</th>
      <th>金額</th>
      <th>ポイント</th>
    </tr>
    <tr>
      <td><%= text1 %></td>
      <td class="right"><%= price1 %></td>
      <td class="right"><%= point1 %></td>
    </tr>
    <tr>
      <td><%= text2 %></td>
      <td class="right"><%= price2 %></td>
      <td class="right"><%= point2 %></td>
    </tr>
  </table>

  <a href="javaBasicDev5_input.jsp">戻る</a>
</body>
</html>