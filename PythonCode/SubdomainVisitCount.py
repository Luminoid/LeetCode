from typing import List


class Solution:
    # Time complexity: O(n)
    # Space complexity: O(n)
    def subdomainVisits(self, cpdomains: List[str]) -> List[str]:
        domain_count = {}
        for cpdomain in cpdomains:
            pair = cpdomain.split(" ")
            if len(pair) == 2:
                count = int(pair[0])
                domains = pair[1].split(".")
                for i in range(len(domains)):
                    key = ".".join(domains[i:])
                    domain_count[key] = domain_count.get(key, 0) + count
        a = [str(domain_count[k]) + " " + k for k in domain_count.keys()]
        return a


if __name__ == '__main__':
    solution = Solution()
    print(solution.subdomainVisits(["9001 discuss.leetcode.com"]))  # ["9001 leetcode.com","9001 discuss.leetcode.com","9001 com"]
    print(solution.subdomainVisits(["900 google.mail.com", "50 yahoo.com", "1 intel.mail.com", "5 wiki.org"]))  # ["901 mail.com","50 yahoo.com","900 google.mail.com","5 wiki.org","5 org","1 intel.mail.com","951 com"]
