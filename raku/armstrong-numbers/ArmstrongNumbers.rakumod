unit module ArmstrongNumbers;

sub is-armstrong-number ($number) is export {
    $number == [+] $number.comb.map( * ** $number.chars )
}
