package main

import (
	"fmt"
)

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	ans := 0
	for i := 1; i <= n; i++ {
		num := i
		sum := 0
		for num != 0 {
			sum += num % 10
			num /= 10
		}

		if a <= sum && sum <= b {
			ans += i
		}
	}

	fmt.Println(ans)
}
