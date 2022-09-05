from typing import List


class Solution:
    # Dynamic Programming
    # Time complexity: O(n^2)   n: range of arr[i]
    # Space complexity: O(n)
    def threeSumMultiWithCount(self, arr: List, count_dict: dict, target: int, count: int, index: int) -> int:
        if target == 0 and count == 0:
            return 1
        if count <= 0 or target < 0 or index >= len(arr):
            return 0
        if count == 1:
            if target >= arr[index]:
                return count_dict.get(target, 0)
            else:
                return 0
        else:
            num = arr[index]
            num_count = count_dict[arr[index]]
            res = (self.threeSumMultiWithCount(arr, count_dict, target, count, index + 1) +
                   self.threeSumMultiWithCount(arr, count_dict, target - num, count - 1, index + 1) * num_count +
                   self.threeSumMultiWithCount(arr, count_dict, target - num * 2, count - 2, index + 1) *
                   num_count * (num_count - 1) / 2 +
                   self.threeSumMultiWithCount(arr, count_dict, target - num * 3, count - 3, index + 1) *
                   num_count * (num_count - 1) * (num_count - 2) / 6) % 1000000007
            return int(res)

    def threeSumMulti(self, arr: List[int], target: int) -> int:
        count_dict = {}
        for num in arr:
            count_dict[num] = count_dict.get(num, 0) + 1
        num_arr = sorted(count_dict.keys())
        return self.threeSumMultiWithCount(num_arr, count_dict, target, 3, 0)


if __name__ == '__main__':
    solution = Solution()
    print(solution.threeSumMulti([1, 1, 2, 2, 3, 3, 4, 4, 5, 5], 8))  # 20
    print(solution.threeSumMulti([1, 1, 2, 2, 2, 2], 5))  # 12
    print(solution.threeSumMulti([2, 1, 3], 6))  # 1
    print(solution.threeSumMulti([2, 1], 6))  # 0
    print(solution.threeSumMulti([3, 2, 3, 0, 1, 0, 2], 7))  # 3
