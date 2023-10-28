unit module Hamming;

sub hamming-distance ( *@strands ) is export {
  die 'strands must be of equal length' if [!=] @strands».chars;
  [+] [Zne] @strands».comb;
}
