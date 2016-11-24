public class InvertBinaryTree {
    public static TreeNode invertTree(TreeNode root) {
        if (root != null) {
            invertTree(root.left);
            invertTree(root.right);
            TreeNode tmp = root.left;
            root.left = root.right;
            root.right = tmp;
            return root;
        } else return null;
    }

    public static void main(String args[]) {

    }
}
