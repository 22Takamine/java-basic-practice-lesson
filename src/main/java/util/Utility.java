package util;

/**
 * メソッドをまとめたUtilityクラス
 */
public class Utility {

    /**
     * 引数を数値に変換し、三角形の面積を求める
     */
    public static double getTriangleArea(String widthStr, String heightStr) {
        int width = Integer.parseInt(widthStr);
        int height = Integer.parseInt(heightStr);
        double result = 0;
        
        result = width * height / 2.0;

        return result;
    }

    /**
     * 引数を数値に変換し、長方形の面積を求める
     */
    public static double getRectangleArea(String widthStr, String heightStr) {
    	int width = Integer.parseInt(widthStr);
        int height = Integer.parseInt(heightStr);
        double result = 0;

        result = width * height;

        return result;
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
