/**
 * Created by Ethan on 2017/9/18.
 */
public class TrimABinarySearchTree {
    public static TreeNode trimBST(TreeNode root, int L, int R) {
        if (root == null){
            return null;
        }
        if (root.val > R){
            return trimBST(root.left, L, R);
        } else if (root.val < L){
            return trimBST(root.right, L, R);
        } else {
            root.left = trimBST(root.left, L, R);
            root.right = trimBST(root.right, L, R);
            return root;
        }
    }

    public static void main(String[] args) {

    }
}
