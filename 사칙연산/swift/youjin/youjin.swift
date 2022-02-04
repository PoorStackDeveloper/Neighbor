let a = readLine()!.split{$0==" "}.map{Int($0)!}
print("\(a[0]+a[1])\n\(a[0]-a[1])\n\(a[0]*a[1])\n\(a[0]/a[1])\n\(a[0]%a[1])")