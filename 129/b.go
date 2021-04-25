package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	w := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		w[i], _ = strconv.Atoi(sc.Text())
	}

	min := 100000000
	for i := 1; i < n; i++ {
		former := float64(sum(w[0:i]))
		later := float64(sum(w[i:n]))
		diff := int(math.Abs(former - later))
		if diff < min {
			min = diff
		}
	}
	fmt.Println(min)
}

func sum(slice []int) int {
	var sum int
	for _, x := range slice {
		sum += x
	}
	return sum
}
