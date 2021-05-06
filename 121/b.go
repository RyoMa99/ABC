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
	sc.Scan()
	c, _ := strconv.Atoi(sc.Text())

	var b []int
	for i := 0; i < m; i++ {
		sc.Scan()
		num, _ := strconv.Atoi(sc.Text())
		b = append(b, num)
	}

	ans := 0
	for i := 0; i < n; i++ {
		sum := 0
		for j := 0; j < m; j++ {
			sc.Scan()
			num, _ := strconv.Atoi(sc.Text())
			sum += num * b[j]
		}
		if sum+c > 0 {
			ans++
		}
	}
	fmt.Println(ans)
}
