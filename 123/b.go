package main

import (
	"fmt"
)

func main() {
	var nums [5]int
	for i := 0; i < 5; i++ {
		fmt.Scan(&nums[i])
	}

	min_index := -1
	min := 10

	for i, num := range nums {
		if num%10 != 0 && min > num%10 {
			min_index = i
			min = num % 10
		}
	}

	ans := 0
	for i, num := range nums {
		if i == min_index {
			ans += num
		} else if num%10 == 0 {
			ans += num
		} else {
			ans += (num/10 + 1) * 10
		}
	}
	fmt.Println(ans)
}
