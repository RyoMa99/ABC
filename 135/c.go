package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	a := make([]int, n+1)
	for i := 0; i < n+1; i++ {
		sc.Scan()
		num, _ := strconv.Atoi(sc.Text())
		a[i] = num
	}

	b := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		num, _ := strconv.Atoi(sc.Text())
		b[i] = num
	}

	ans := 0

	rest_monster_count := a[0]
	for index, num := range b {
		if rest_monster_count >= num {
			ans += num
			rest_monster_count = a[index+1]
		} else {
			if rest_monster_count+a[index+1] >= num {
				ans += num
				rest_monster_count = a[index+1] - (num - rest_monster_count)
			} else {
				ans += rest_monster_count + a[index+1]
				rest_monster_count = 0
			}
		}
	}

	fmt.Println(ans)
}
