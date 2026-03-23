package day1

import "core:fmt"
import "core:strings"
import "core:strconv"

execute::proc(input: string) {
    l := strings.split(input, "\n")
    
    current := 50
    counter_part1 := 0
    counter_part2 := 0

    for s in l {
        direction := s[0]
        clicks_s, _ := strings.substring(s, 1, len(s))
        clicks, _ := strconv.parse_int(clicks_s)

        if direction == 'L' {
           for c in 1..=clicks {
               switch current {
               case 0:
                   current = 99
               case 1: 
                   counter_part2 += 1
                   fallthrough
               case:
                   current = current - 1
               }
           } 
        } else {
            for c in 1..=clicks {
                switch current {
                case 99:
                    current = 0
                    counter_part2 += 1
                case:
                    current = current + 1
            }
           }
        }

        if current == 0 {
            counter_part1 += 1
        }
    }
    fmt.printfln("Result Part 1: %d", counter_part1)
    fmt.printfln("Result Part 2: %d", counter_part2)
}
