module JS-STR-NUMERIC-LITERAL

syntax StrNumericLiteral ::= StrDecimalLiteral
                           | HexIntegerLiteral

syntax StrDecimalLiteral ::= StrUnsignedDecimalLiteral
                           | "+" StrUnsignedDecimalLiteral
                           | "-" StrUnsignedDecimalLiteral

syntax StrUnsignedDecimalLiteral ::= InfinityLiteral
                                   | DecimalDigits "." DecimalDigits ExponentPart
                                   | DecimalDigits "." DecimalDigits                [klabel('dotDecimalLiteral)]
                                   | DecimalDigits "."               ExponentPart   [klabel('dotDecimalLiteral)]
                                   | DecimalDigits "."
                                   | "." DecimalDigits ExponentPart
                                   | "." DecimalDigits
                                   | DecimalDigits ExponentPart
                                   | DecimalDigits

syntax InfinityLiteral ::= "Infinity" [token] // [notInRules, notInGround]

syntax DecimalDigits ::= DecimalDigit
                       | DecimalDigits DecimalDigit

syntax DecimalDigit ::= r"[0-9]" [token] // [notInRules, notInGround]

syntax ExponentPart ::= ExponentIndicator SignedInteger

syntax ExponentIndicator ::= r"[eE]" [token] // [notInRules, notInGround]

syntax SignedInteger ::= DecimalDigits
                       | "+" DecimalDigits
                       | "-" DecimalDigits

syntax HexIntegerLiteral ::= "0x" HexDigit 
                           | "0X" HexDigit
                           | HexIntegerLiteral HexDigit

syntax HexDigit ::= r"[0-9a-fA-F]" [token] // [notInRules, notInGround]

endmodule
