package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	switch n {
	case 1:
		fmt.Println(0)
	case 2:
		fmt.Println(0)
	case 3:
		fmt.Println(1)
	default:
		tri := []int{0, 0, 1}

		for i := 0; i < n-3; i++ {
			sum := 0

			for _, num := range tri {
				sum += num
			}

			tri = tri[1:]
			tri = append(tri, sum%10007)
		}

		fmt.Println(tri[len(tri)-1])
	}
}
