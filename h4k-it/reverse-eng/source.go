package main

import (
	"fmt"
	"bufio"
	"os"
	"strings"
	"strconv"
	b64 "encoding/base64"
)

func main () {
	secret := "*********";
	fmt.Println("Welcome to my simple Calculator implementation!\n@trustie_rity\n");

	reader := bufio.NewReader(os.Stdin);
	fmt.Println("\nBasic Calculator (+, -, *, /)\n");
	fmt.Println("[!] Enter two numbers and an Operator eg 3 + 5 \n[!] exit -> to Exit the program\n");

	for {
		fmt.Print("Input: ");
		input, _ := reader.ReadString('\n'); 
		input = strings.TrimSpace(input);

		// Exit condition
		if input == "exit" {
			fmt.Println("[+] Goodbye :)\n")
			break
		}
		// Secret Condition
		if input == secret {
			salt := b64.StdEncoding.EncodeToString([]byte(secret));	
			fmt.Println(haha(salt));
			break
		}

		// normal calculation
		parts := strings.Fields(input);
		if len(parts) != 3 {
			fmt.Println("\n[-] Error! Enter number operator number\n");
			continue
		}

		// parse numbers
		number1, err := strconv.ParseFloat(parts[0], 64);
		if err != nil {
			fmt.Println("\n[-] Invalid First Number!");
			continue
		}

		number2, err := strconv.ParseFloat(parts[2], 64);
		if err != nil {
			fmt.Println("\n[-] Invalid Second Number!");
			continue
		}

		// Calculation
		result, err := calculate(number1, number2, parts[1]);
		if err != nil {
			fmt.Println("\n[-] Invalid operator, Calculation Failed!", err);
			continue
		}

		fmt.Printf("[+] Results = %.2f\n", result);
	}
}


func calculate(num1, num2 float64, operator string) (float64, error) {
	switch operator{
	case "+": 
		return num1 + num2, nil
	case "-":
		return num1 - num2, nil
	case "*":
		return num1 * num2, nil
	case "/":
		if num2 == 0 {
			return 0, fmt.Errorf("\n[-] Division by zero!\n")
		}
		return num1 / num2, nil
	default:
		return 0, fmt.Errorf("\n[-] Invalid Operator!\n")

	}
}

func haha(salt string) (string) {
	fmt.Println("\n[+] The salt is : ", salt);
	reader := bufio.NewReader(os.Stdin);
	input, _ := reader.ReadString('\n');
	input = strings.TrimSpace(input);
	check := []byte(input)
	
	key := byte(salt[1])
	//result := make([]byte, len(passphrase))
// e_flag = 84,94,83,85,73,106,125,96,109,91,65,109,87,83,65,75,109,66,1,83,65,75,19,79,49
	e_flag := [...]int{ *, *, *,* ,*v, *, *, *, *, *, *, *, *}
	
    	for i, b := range []byte(check) {
		if byte(e_flag[i]) ==  b ^ key {
			continue
		}else {
			return "\n[-] Failed";
		}
    	}
	return "\n[+] Congratulations, That is the flag\n";
}
