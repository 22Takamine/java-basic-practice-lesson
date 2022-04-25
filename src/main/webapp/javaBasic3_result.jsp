<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // ※必要な処理を実装してください

    // 入力値取得

    // ロボットからの返信用メッセージ作成
    //requestの値はUTF-8ではないのでそのままだと文字化けがおこる
    //そのため宣言している
    request.setCharacterEncoding("UTF-8");
	
	//javaBasic3_input.jspで出力した結果を受け取り変数に代入している。
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    String bloodType = request.getParameter("bloodType");
    
    //画面出力用関数
	String replyName = ("");
	String replyAge = ("");
	String replyBlood = ("");
	
	//歳が空だと０を入力している
	if(age.isEmpty()){
 		age = "0";
 	}
	
	//入力されたString型ををint型に変換
 	int countAge = Integer.parseInt(age);
	//ロボットの年齢
	int robotAge = 20;
	
	
	//名前の入力が空だったら、名無しを出力
	if(name.isEmpty()){
		replyName = "名無し";	
	}else if(name.equals("ロボット")){									//名前がロボットの場合
		replyName = "こんにちは、" + name + "さん!私と同じ名前ですね!";
		
	}else if(name.equals("robot")){										//名前がrobotの場合
		replyName = "HELLO " + name + "! It's the same name!";
		
	}else {																//名前を出力
		replyName = "こんにちは、" + name + "さん!";
	}
	
	
	if(age.isEmpty()){													//入力がなければ０を出力
		replyAge = "私よりも" + robotAge + "歳年下ですね。" ;
		
	}else if(countAge == 20){											//
		replyAge = "私と同い年なんですね!" ;
		
	}else if(countAge > 20){											//
		replyAge = "私よりも" + (countAge - robotAge)+ "歳年上ですね" ;
		
	}else if(countAge < 20){											//
		replyAge = "私よりも" + (robotAge - countAge) + "歳年下ですね" ;
		
	}
	
	switch(bloodType){
	case "typeA":
		replyBlood = ("私もA型です！" );
		break;
	
	case "typeB":
		replyBlood = ("B型の人と話すのは初めてです。" );
		break;
		
	case "typeAB":
		replyBlood = ("私の母がAB型です。" );
		break;
		
	case "typeO":
		replyBlood = ("私の父がO型です。" );
		break;
			
	}
	
	
	

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->

    <p><% out.println(replyName); %></p>
    <p><% out.println(replyAge); %></p>
    <p><%= replyBlood %></p>
  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>