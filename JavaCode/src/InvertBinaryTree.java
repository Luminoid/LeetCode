class InvertBinaryTree {
    // Time complexity: O(n)
    // Space complexity: O(n)
    public TreeNode invertTree(TreeNode root) {
        if (root != null) {
            TreeNode tmp = root.left;
            root.left = root.right;
            root.right = tmp;
            invertTree(root.left);
            invertTree(root.right);
        }
        return root;
    }

    public static void main(String[] args) {

    }
}
