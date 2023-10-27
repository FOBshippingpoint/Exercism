unit module Secrets;

sub secret-add ($secret --> Code) is export {
    * + $secret;
}

sub secret-subtract ($secret --> Code) is export {
    * - $secret;
}

sub secret-multiply ($secret --> Code) is export {
    * * $secret;
}

sub secret-divide ($secret --> Code) is export {
    * / $secret;
}

sub secret-combine ($func1, $func2 --> Code) is export {
    *.$func1.$func2;
}
