unit module Pangram;

sub is-pangram ($sentence) is export {
    $sentence.lc.comb ⊇ 'a' .. 'z'
}