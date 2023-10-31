unit module Isogram;

sub is-isogram ($phrase) is export {
    given $phrase.lc.comb(/<:L>/) { 
        return .cache.unique.elems == .elems
    }
}
