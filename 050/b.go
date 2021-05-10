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

	t_s := make([]int, 0)
	for i := 0; i < n; i++ {
		sc.Scan()
		t, _ := strconv.Atoi(sc.Text())
		t_s = append(t_s, t)
	}

	sc.Scan()
	m, _ := strconv.Atoi(sc.Text())

	for i := 0; i < m; i++ {
		c_t := make([]int, len(t_s))
		copy(c_t, t_s)

		sc.Scan()
		p, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		x, _ := strconv.Atoi(sc.Text())

		c_t[p-1] = x

		ans := 0
		for _, num := range c_t {
			ans += num
		}
		fmt.Println(ans)
	}
}
