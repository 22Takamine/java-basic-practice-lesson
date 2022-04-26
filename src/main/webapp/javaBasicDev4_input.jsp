<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    /*
       下記コメントを参考に、必要な処理を記述してください
    */

    // セッション初期化
    if (session.getAttribute("totalMoney") == null) {
        session.setAttribute("totalMoney", 150000);
    }
	String btn = request.getParameter("btn");
	
	int money = 0;
    // (セッションに所持金がない、もしくは、リセットボタンを押した際は
    //  所持金の初期値をセッションに保存する)
    if ((btn != null && btn.equals("reset")) || (int) session.getAttribute("totalMoney") < 0) {
        //session.invalidate();
        session.setAttribute("totalMoney", 150000);
    }
	// 所持金をセッションから取得
	//現在は仮で値をセットしている。実際はセッションから取得する
	money = (int) session.getAttribute("totalMoney");
	 
 
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題4(発展)</title>
<style>
table {
    border-collapse: collapse;
}

table th, table td {
    border: solid 1px black;
}

.center {
    text-align: center;
}
</style>
</head>
<body>

  <h1>Java基礎 - 演習問題4(発展)</h1>

  <h2>買い物</h2>

  <p>
    現在の所持金:<%= money%></p>

  <span>購入する商品を選択してください</span>

  <form action="javaBasicDev4_result.jsp" method="post">
    <table>
      <tr>
        <th>選択</th>
        <th>商品</th>
        <th>金額</th>
      </tr>
      <tr>
        <td class="center"><label><input type="checkbox"
            name="product" value="tv"></label></td>
        <td>テレビ</td>
        <td>20000</td>
      </tr>
      <tr>
        <td class="center"><label><input type="checkbox"
            name="product" value="refrigerator"></label></td>
        <td>冷蔵庫</td>
        <td>30000</td>
      </tr>
      <tr>
        <td class="center"><label><input type="checkbox"
            name="product" value="microWave"></label></td>
        <td>電子レンジ</td>
        <td>10000</td>
      </tr>
      <tr>
        <td class="center"><label><input type="checkbox"
            name="product" value="washingMachine"></label></td>
        <td>洗濯機</td>
        <td>50000</td>
      </tr>
    </table>
    <button type="submit">購入</button>
  </form>

  <br>

  <form action="javaBasicDev4_input.jsp" method="post">
    <button type="submit" name="btn" value="reset">リセット</button>
  </form>
</body>
</html>