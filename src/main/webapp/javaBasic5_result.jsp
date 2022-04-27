<%@ page import="util.Utility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%

    // 入力値を取得
    request.setCharacterEncoding("UTF-8");
    String widthStr = request.getParameter("width");
    String heightStr = request.getParameter("height");
    String btn = request.getParameter("btn");

    double result = 0;
    
    if(Utility.isNullOrEmpty(widthStr)){
    	widthStr = "0";
    }
    
    if(Utility.isNullOrEmpty(heightStr)){
    	heightStr = "0";
    }
    
    if(btn != null){
    	switch(btn){
    	case "triangle":
    		result = Utility.getTriangleArea(widthStr, heightStr);
    		break;
    		
    	case "rectangle":
    		result = Utility.getRectangleArea(widthStr, heightStr);
    		break;
    	
    	default:
    		result = -1;
    		break;
    		
    	}
    	
    	
    }

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5</title>
</head>
<body>
  <h1>Java基礎 - 演習問題5</h1>

  <h2>計算結果</h2>
  <p>
    面積：<%=result%><br>
  </p>
  <a href="javaBasic5_input.jsp">戻る</a>
</body>
</html>