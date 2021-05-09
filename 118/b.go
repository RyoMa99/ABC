package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	m, _ := strconv.Atoi(sc.Text())

	answer := make([]int, m)

	for i := 0; i < n; i++ {
		sc.Scan()
		k, _ := strconv.Atoi(sc.Text())
		for j := 0; j < k; j++ {
			sc.Scan()
			a, _ := strconv.Atoi(sc.Text())
			answer[a-1]++
		}
	}

	count := 0
	for _, num := range answer {
		if num == n {
			count++
		}
	}

	fmt.Println(count)
}
