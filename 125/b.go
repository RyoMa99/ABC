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
	value := make([]int, 0)

	for i := 0; i < n; i++ {
		sc.Scan()
		v, _ := strconv.Atoi(sc.Text())
		value = append(value, v)
	}

	ans := 0
	for i := 0; i < n; i++ {
		sc.Scan()
		price, _ := strconv.Atoi(sc.Text())
		if value[i]-price > 0 {
			ans += value[i] - price
		}
	}

	fmt.Println(ans)
}
