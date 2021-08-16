func solution(_ s:String) -> Bool {
    var no = 0

    for i in s{
        if i == "1" || i == "2" || i == "3" || i == "4" || i == "5" || i == "6" || i == "7" || i == "8" || i == "9" || i == "0"{}else{
            no = 1
        }
    }

    if s.count == 4 || s.count == 6{}else{
        no = 1
    }

    return no == 0 ? true : false
}