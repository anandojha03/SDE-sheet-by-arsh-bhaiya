class Solution {
    public int subarraySum(int[] arr, int k) {
        HashMap<Integer , Integer> map = new HashMap<>();
        int prefixSum = 0;
        int ans = 0;
        for(int i = 0 ; i < arr.length ; i++){
            prefixSum += arr[i];
            if(prefixSum == k){
                ans++;
            }
            if(map.containsKey(prefixSum - k)){
                ans += map.get(prefixSum - k);
            }
            map.put(prefixSum , map.getOrDefault(prefixSum , 0) + 1);
        }
        return ans;
    }
}
