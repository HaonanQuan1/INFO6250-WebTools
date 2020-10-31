import java.util.HashMap;
import java.util.Map;

class Solution {
    static class Pair{
        int key;
        int value;
        public Pair(){

        }
        public Pair(int key, int value){
            this.key = key;
            this.value = value;
        }

        public int getValue() {
        }
    }

    public static int solution(int[] A){
        int ans = 0;
        // System.err.println("Tip: Use System.err.println() to write debug messages on the output tab.");
        if(A == null || A.length == 0) return 0;
        int count = 3;
        int len = Integer.MIN_VALUE;
        Map<Integer,Integer> map1 = new HashMap<>();
        Map<Integer,Pair> map2 = new HashMap<>();
        for(int i = 0; i < A.length; i++){
            if(map1.containsKey(A[i])){
                map1.put(A[i],map1.get(A[i]) + 1);
            }
            if(map2.containsKey(A[i])){
                Pair p = map2.get(A[i]);
                int last = p.getValue();
                if(i > last){
                    Pair p1 = new Pair(p.getKey(),i);
                    map2.put(A[i],p1);
                }
            }else{
                Pair p2 = new Pair(i,i);
                //p2.setKey()
                map2.put(A[i],p2);
            }
        }
        for(int i = 0; i < A.length; i++){
            int countNum = Integer.MIN_VALUE;
            int maxNum = 0;
            int length = i - 0 + 1;
            for(int j = 0; j <= i; j++){
                if(map1.get(A[j]) > countNum){
                    countNum = map1.get(A[j]);
                    maxNum = A[j];
                }
            }
            if(length - maxNum <= 3){
                ans = Math.max(ans,(maxNum + 3));
            }
        }
        return ans;
    }
}