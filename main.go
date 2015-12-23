package main
import (
	"os"
	"bufio"
	"fmt"
)

func main() {
	var s string
	scanner := bufio.NewScanner(os.Stdin)
	fmt.Print("Enter Name: ")
	for scanner.Scan() {
		s = scanner.Text()
		fmt.Printf("Hello %s!!\n", s)
		fmt.Print("Enter Name: ")
	}
	if err := scanner.Err(); err != nil {
		fmt.Fprintln(os.Stderr, err)
	}
}
