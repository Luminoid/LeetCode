class NimGame {
    // Time complexity: O(1)
    // Space complexity: O(1)
    public boolean canWinNim(int n) {
        return n % 4 != 0;
    }

    public static void main(String[] args) {
        NimGame nimGame = new NimGame();
        System.out.println(nimGame.canWinNim(1));   // true
        System.out.println(nimGame.canWinNim(2));   // true
        System.out.println(nimGame.canWinNim(4));   // false
    }
}
