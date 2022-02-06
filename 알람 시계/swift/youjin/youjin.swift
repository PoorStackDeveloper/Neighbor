var T = readLine()!.split{$0 == " "}.map{Int($0)!}

if T[1] < 45 {
    if T[0] == 0{ T[0] = 24 }
    T[0] -= 1
    T[1] = 60-(45-T[1])
}else{
    T[1] = T[1]-45
}

print(T[0],T[1])
