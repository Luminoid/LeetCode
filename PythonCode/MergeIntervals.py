from typing import List


class Solution:
    # Sorting
    # Time complexity: O(n log(n))
    # Space complexity: O(n)
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
        merged_list = []
        for interval in sorted(intervals):
            if len(merged_list) > 0:
                last = merged_list[-1]
                if last[1] >= interval[0]:
                    merged_list[-1][1] = max(last[1], interval[1])
                else:
                    merged_list.append(interval)
            else:
                merged_list.append(interval)
        return merged_list


if __name__ == '__main__':
    solution = Solution()
    print(solution.merge([[1, 3], [2, 6], [8, 10], [15, 18]]))  # [[1,6],[8,10],[15,18]]
    print(solution.merge([[1, 4], [4, 5]]))                     # [[1,5]]
    print(solution.merge([[1, 4], [2, 3]]))                     # [[1,4]]
