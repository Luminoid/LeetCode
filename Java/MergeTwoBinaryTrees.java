/**
 * Created by Ethan on 2017/9/17.
 */
public class MergeTwoBinaryTrees {
    public TreeNode mergeTrees(TreeNode t1, TreeNode t2) {
        if (t1 == null && t2 == null){
            return null;
        }
        int val = (t1 != null ? t1.val : 0) + (t2 != null ? t2.val : 0);
        TreeNode node = new TreeNode(val);
        node.left = mergeTrees(t1 != null ? t1.left : null, t2 != null ? t2.left : null);
        node.right = mergeTrees(t1 != null ? t1.right : null, t2 != null ? t2.right : null);

        return node;
    }
}
