 // https://ru.m.wikipedia.org/wiki/99_бутылок_пива?fbclid=IwAR0_-A7j6F4H5SsJUzHSO1p4XDxTT19nzActp__a4daJC26g_h-IEC8RTKE

 
 func bottlePlural(bottles i: Int) -> String {
    var word: String!
    if i <= 19, i >= 11 {
        word = " бутылок"
    } else {
        if i % 10 == 1 {
            word = " бутылка"
        } else {switch i % 10 {
        case 2, 3, 4:
            word = " бутылки"
        default:
            word = " бутылок"
            }
        }
    }
    return word
 }
 
 for i in (1...99).reversed() {
    let word = bottlePlural(bottles: i)
    print("\(i)" + word + " пива на стене")
    print("\(i)" + word + " пива!")
    print("Возьми одну, пусти по кругу")
    if (i-1)==0 {
        print("Нет бутылок пива на стене")
    } else {
        let new_word = bottlePlural(bottles: i-1)
        print("\(i-1)" + new_word + " пива на стене\n")
    }
 }
