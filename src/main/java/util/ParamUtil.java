package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

    /**
     * ポイント計算
     */
	public static int getPoint(int amount){
		int point = (int)(amount * 0.01);
		
		return point;	
	}

    /**
     * ポイント計算(ランクあり)
     */
	public static int getPoint(int amount, int rank){
		int rankPoint = 0;
		switch(rank){
		case 0:
			rankPoint = getPoint(amount);
			break;
			
		case 1:
			rankPoint = (int)(amount * 0.02);
			break;
			
		case 2:
			rankPoint = (int)(amount * 0.03);
			break;	
			
		}
		
		return rankPoint;	
	}

    /**
     * 引数に指定した文字列がnull、または空文字かを判定
     */
	public static boolean isNullOrEmpty(String str) {
    	boolean empty = true;
    	empty = ((str == null) || str.isEmpty());
    	
        return empty;
    }

}
