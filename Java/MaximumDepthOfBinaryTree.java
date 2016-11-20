public class MaximumDepthOfBinaryTree {
    public static int maxDepth(TreeNode root) {
        if (root == null) return 0;
        int leftDepth = root.left != null ? maxDepth(root.left) : 0;
        int rightDepth = root.right != null ? maxDepth(root.right) : 0;
        if (leftDepth > rightDepth) return leftDepth + 1;
        else return rightDepth + 1;
    }

    public static void main(String args[]){
        TreeNode treeNode7 = new TreeNode(7, null, null);
        TreeNode treeNode6 = new TreeNode(6, null, null);
        TreeNode treeNode5 = new TreeNode(5, null, null);
        TreeNode treeNode4 = new TreeNode(4, null, treeNode7);
        TreeNode treeNode3 = new TreeNode(3, treeNode6, null);
        TreeNode treeNode2 = new TreeNode(2, treeNode4, treeNode5);
        TreeNode treeNode1 = new TreeNode(1, treeNode2, treeNode3);
        System.out.println(maxDepth(treeNode1));
        System.out.println(maxDepth(treeNode7));
    }
}

class TreeNode {
    int val;
    TreeNode left;
    TreeNode right;

    public TreeNode(int val, TreeNode left, TreeNode right) {
        this.val = val;
        this.left = left;
        this.right = right;
    }
}