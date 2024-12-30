0000: pushi 0x0000 ; push imm16
0003: pushi 0xBBAA ; push imm16
0006: store ; pops a value, pop an address, store the value in memory[addr]
0007: pushi 0x0001 ; push imm16
000A: pushi 0xDDCC ; push imm16
000D: store ; pops a value, pop an address, store the value in memory[addr]
000E: pushi 0x0002 ; push imm16
0011: pushi 0xFFEE ; push imm16
0014: store ; pops a value, pop an address, store the value in memory[addr]
0015: pushi 0x0003 ; push imm16
0018: pushi 0xADDE ; push imm16
001B: store ; pops a value, pop an address, store the value in memory[addr]
001C: pushi 0x0004 ; push imm16
001F: pushi 0xEFBE ; push imm16
0022: store ; pops a value, pop an address, store the value in memory[addr]
0023: pushi 0x0005 ; push imm16
0026: pushi 0xFECA ; push imm16
0029: store ; pops a value, pop an address, store the value in memory[addr]
002A: pushi 0x0006 ; push imm16
002D: pushi 0xBEBA ; push imm16
0030: store ; pops a value, pop an address, store the value in memory[addr]
0031: pushi 0x0007 ; push imm16
0034: pushi 0xCDAB ; push imm16
0037: store ; pops a value, pop an address, store the value in memory[addr]
0038: pushi 0x000A ; push imm16
003B: pushi 0x6144 ; push imm16
003E: store ; pops a value, pop an address, store the value in memory[addr]
003F: pushi 0x000B ; push imm16
0042: pushi 0x7534 ; push imm16
0045: store ; pops a value, pop an address, store the value in memory[addr]
0046: pushi 0x000C ; push imm16
0049: pushi 0x6962 ; push imm16
004C: store ; pops a value, pop an address, store the value in memory[addr]
004D: pushi 0x000D ; push imm16
0050: pushi 0x6C63 ; push imm16
0053: store ; pops a value, pop an address, store the value in memory[addr]
0054: pushi 0x000E ; push imm16
0057: pushi 0x3165 ; push imm16
005A: store ; pops a value, pop an address, store the value in memory[addr]
005B: pushi 0x000F ; push imm16
005E: pushi 0x6669 ; push imm16
0061: store ; pops a value, pop an address, store the value in memory[addr]
0062: pushi 0x0010 ; push imm16
0065: pushi 0x6265 ; push imm16
0068: store ; pops a value, pop an address, store the value in memory[addr]
0069: pushi 0x0011 ; push imm16
006C: pushi 0x6230 ; push imm16
006F: store ; pops a value, pop an address, store the value in memory[addr]
0070: pushi 0x0008 ; push imm16
0073: pushi 0x0003 ; push imm16
0076: load ; push the contents of memory[pop()]
0077: pushi 0x0030 ; push imm16
007A: shl ; pop value1, pop value2, push value2 << value1
007B: pushi 0x0002 ; push imm16
007E: load ; push the contents of memory[pop()]
007F: pushi 0x0020 ; push imm16
0082: shl ; pop value1, pop value2, push value2 << value1
0083: or ; pop two values, or them, push the result
0084: pushi 0x0001 ; push imm16
0087: load ; push the contents of memory[pop()]
0088: pushi 0x0010 ; push imm16
008B: shl ; pop value1, pop value2, push value2 << value1
008C: or ; pop two values, or them, push the result
008D: pushi 0x0000 ; push imm16
0090: load ; push the contents of memory[pop()]
0091: or ; pop two values, or them, push the result
0092: store ; pops a value, pop an address, store the value in memory[addr]
0093: pushi 0x0009 ; push imm16
0096: pushi 0x0007 ; push imm16
0099: load ; push the contents of memory[pop()]
009A: pushi 0x0030 ; push imm16
009D: shl ; pop value1, pop value2, push value2 << value1
009E: pushi 0x0006 ; push imm16
00A1: load ; push the contents of memory[pop()]
00A2: pushi 0x0020 ; push imm16
00A5: shl ; pop value1, pop value2, push value2 << value1
00A6: or ; pop two values, or them, push the result
00A7: pushi 0x0005 ; push imm16
00AA: load ; push the contents of memory[pop()]
00AB: pushi 0x0010 ; push imm16
00AE: shl ; pop value1, pop value2, push value2 << value1
00AF: or ; pop two values, or them, push the result
00B0: pushi 0x0004 ; push imm16
00B3: load ; push the contents of memory[pop()]
00B4: or ; pop two values, or them, push the result
00B5: store ; pops a value, pop an address, store the value in memory[addr]
00B6: pushi 0x0012 ; push imm16
00B9: pushi 0x000D ; push imm16
00BC: load ; push the contents of memory[pop()]
00BD: pushi 0x0030 ; push imm16
00C0: shl ; pop value1, pop value2, push value2 << value1
00C1: pushi 0x000C ; push imm16
00C4: load ; push the contents of memory[pop()]
00C5: pushi 0x0020 ; push imm16
00C8: shl ; pop value1, pop value2, push value2 << value1
00C9: or ; pop two values, or them, push the result
00CA: pushi 0x000B ; push imm16
00CD: load ; push the contents of memory[pop()]
00CE: pushi 0x0010 ; push imm16
00D1: shl ; pop value1, pop value2, push value2 << value1
00D2: or ; pop two values, or them, push the result
00D3: pushi 0x000A ; push imm16
00D6: load ; push the contents of memory[pop()]
00D7: or ; pop two values, or them, push the result
00D8: store ; pops a value, pop an address, store the value in memory[addr]
00D9: pushi 0x0013 ; push imm16
00DC: pushi 0x0011 ; push imm16
00DF: load ; push the contents of memory[pop()]
00E0: pushi 0x0030 ; push imm16
00E3: shl ; pop value1, pop value2, push value2 << value1
00E4: pushi 0x0010 ; push imm16
00E7: load ; push the contents of memory[pop()]
00E8: pushi 0x0020 ; push imm16
00EB: shl ; pop value1, pop value2, push value2 << value1
00EC: or ; pop two values, or them, push the result
00ED: pushi 0x000F ; push imm16
00F0: load ; push the contents of memory[pop()]
00F1: pushi 0x0010 ; push imm16
00F4: shl ; pop value1, pop value2, push value2 << value1
00F5: or ; pop two values, or them, push the result
00F6: pushi 0x000E ; push imm16
00F9: load ; push the contents of memory[pop()]
00FA: or ; pop two values, or them, push the result
00FB: store ; pops a value, pop an address, store the value in memory[addr]
00FC: pushi 0x0014 ; push imm16
00FF: pushi 0x0000 ; push imm16
0102: store ; pops a value, pop an address, store the value in memory[addr]
0103: pushi 0x0018 ; push imm16
0106: pushi 0x0001 ; push imm16
0109: store ; pops a value, pop an address, store the value in memory[addr]
010A: pushi 0x0017 ; push imm16
010D: pushi 0x0000 ; push imm16
0110: store ; pops a value, pop an address, store the value in memory[addr]
0111: pushi 0x0019 ; push imm16
0114: pushi 0x0000 ; push imm16
0117: store ; pops a value, pop an address, store the value in memory[addr]
0118: pushi 0x0018 ; push imm16
011B: load ; push the contents of memory[pop()]
011C: pushi 0x0001 ; push imm16
011F: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
0120: jmp_if_false 0x0241 ; pop a value, if it's zero, jump to imm16
0123: pushi 0x0014 ; push imm16
0126: load ; push the contents of memory[pop()]
0127: pushi 0x0008 ; push imm16
012A: is_less ; pop two values, compare them, push 1 if less, 0 if not
012B: jmp_if_false 0x0150 ; pop a value, if it's zero, jump to imm16
012E: pushi 0x0015 ; push imm16
0131: pushi 0x0008 ; push imm16
0134: load ; push the contents of memory[pop()]
0135: pushi 0x0008 ; push imm16
0138: pushi 0x0014 ; push imm16
013B: load ; push the contents of memory[pop()]
013C: mul ; pop two values, multiply them, push the result
013D: shr ; pop value1, pop value2, push value2 >> value1
013E: store ; pops a value, pop an address, store the value in memory[addr]
013F: pushi 0x0016 ; push imm16
0142: pushi 0x0012 ; push imm16
0145: load ; push the contents of memory[pop()]
0146: pushi 0x0008 ; push imm16
0149: pushi 0x0014 ; push imm16
014C: load ; push the contents of memory[pop()]
014D: mul ; pop two values, multiply them, push the result
014E: shr ; pop value1, pop value2, push value2 >> value1
014F: store ; pops a value, pop an address, store the value in memory[addr]
0150: pushi 0x0014 ; push imm16
0153: load ; push the contents of memory[pop()]
0154: pushi 0x0007 ; push imm16
0157: is_greater ; pop value1, pop value2, push 1 if value2 > value1, 0 if not
0158: jmp_if_false 0x017D ; pop a value, if it's zero, jump to imm16
015B: pushi 0x0015 ; push imm16
015E: pushi 0x0009 ; push imm16
0161: load ; push the contents of memory[pop()]
0162: pushi 0x0008 ; push imm16
0165: pushi 0x0014 ; push imm16
0168: load ; push the contents of memory[pop()]
0169: mul ; pop two values, multiply them, push the result
016A: shr ; pop value1, pop value2, push value2 >> value1
016B: store ; pops a value, pop an address, store the value in memory[addr]
016C: pushi 0x0016 ; push imm16
016F: pushi 0x0013 ; push imm16
0172: load ; push the contents of memory[pop()]
0173: pushi 0x0008 ; push imm16
0176: pushi 0x0014 ; push imm16
0179: load ; push the contents of memory[pop()]
017A: mul ; pop two values, multiply them, push the result
017B: shr ; pop value1, pop value2, push value2 >> value1
017C: store ; pops a value, pop an address, store the value in memory[addr]
017D: pushi 0x0015 ; push imm16
0180: pushi 0x0015 ; push imm16
0183: load ; push the contents of memory[pop()]
0184: pushi 0x00FF ; push imm16
0187: and ; pop two values, and them, push the result
0188: store ; pops a value, pop an address, store the value in memory[addr]
0189: pushi 0x0016 ; push imm16
018C: pushi 0x0016 ; push imm16
018F: load ; push the contents of memory[pop()]
0190: pushi 0x00FF ; push imm16
0193: and ; pop two values, and them, push the result
0194: store ; pops a value, pop an address, store the value in memory[addr]
0195: pushi 0x0014 ; push imm16
0198: load ; push the contents of memory[pop()]
0199: pushi 0x0002 ; push imm16
019C: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
019D: jmp_if_false 0x01AC ; pop a value, if it's zero, jump to imm16
01A0: pushi 0x0016 ; push imm16
01A3: pushi 0x0016 ; push imm16
01A6: load ; push the contents of memory[pop()]
01A7: pushi 0x0004 ; push imm16
01AA: rotl8 ; pop value1, pop value2, push value2 rotated left by value1
01AB: store ; pops a value, pop an address, store the value in memory[addr]
01AC: pushi 0x0014 ; push imm16
01AF: load ; push the contents of memory[pop()]
01B0: pushi 0x0009 ; push imm16
01B3: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
01B4: jmp_if_false 0x01C3 ; pop a value, if it's zero, jump to imm16
01B7: pushi 0x0016 ; push imm16
01BA: pushi 0x0016 ; push imm16
01BD: load ; push the contents of memory[pop()]
01BE: pushi 0x0002 ; push imm16
01C1: rotr8 ; pop value1, pop value2, push value2 rotated right by value1
01C2: store ; pops a value, pop an address, store the value in memory[addr]
01C3: pushi 0x0014 ; push imm16
01C6: load ; push the contents of memory[pop()]
01C7: pushi 0x000D ; push imm16
01CA: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
01CB: jmp_if_false 0x01DA ; pop a value, if it's zero, jump to imm16
01CE: pushi 0x0016 ; push imm16
01D1: pushi 0x0016 ; push imm16
01D4: load ; push the contents of memory[pop()]
01D5: pushi 0x0007 ; push imm16
01D8: rotl8 ; pop value1, pop value2, push value2 rotated left by value1
01D9: store ; pops a value, pop an address, store the value in memory[addr]
01DA: pushi 0x0014 ; push imm16
01DD: load ; push the contents of memory[pop()]
01DE: pushi 0x000F ; push imm16
01E1: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
01E2: jmp_if_false 0x01F1 ; pop a value, if it's zero, jump to imm16
01E5: pushi 0x0016 ; push imm16
01E8: pushi 0x0016 ; push imm16
01EB: load ; push the contents of memory[pop()]
01EC: pushi 0x0007 ; push imm16
01EF: rotl8 ; pop value1, pop value2, push value2 rotated left by value1
01F0: store ; pops a value, pop an address, store the value in memory[addr]
01F1: pushi 0x0015 ; push imm16
01F4: load ; push the contents of memory[pop()]
01F5: pushi 0x0016 ; push imm16
01F8: load ; push the contents of memory[pop()]
01F9: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
01FA: pushi 0x0000 ; push imm16
01FD: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
01FE: jmp_if_false 0x0208 ; pop a value, if it's zero, jump to imm16
0201: pushi 0x0018 ; push imm16
0204: pushi 0x0000 ; push imm16
0207: store ; pops a value, pop an address, store the value in memory[addr]
0208: pushi 0x0015 ; push imm16
020B: load ; push the contents of memory[pop()]
020C: pushi 0x0016 ; push imm16
020F: load ; push the contents of memory[pop()]
0210: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
0211: jmp_if_false 0x0220 ; pop a value, if it's zero, jump to imm16
0214: pushi 0x0017 ; push imm16
0217: pushi 0x0017 ; push imm16
021A: load ; push the contents of memory[pop()]
021B: pushi 0x0001 ; push imm16
021E: add ; pop two values, add them, push the result
021F: store ; pops a value, pop an address, store the value in memory[addr]
0220: pushi 0x0014 ; push imm16
0223: pushi 0x0014 ; push imm16
0226: load ; push the contents of memory[pop()]
0227: pushi 0x0001 ; push imm16
022A: add ; pop two values, add them, push the result
022B: store ; pops a value, pop an address, store the value in memory[addr]
022C: pushi 0x0014 ; push imm16
022F: load ; push the contents of memory[pop()]
0230: pushi 0x000F ; push imm16
0233: is_greater ; pop value1, pop value2, push 1 if value2 > value1, 0 if not
0234: jmp_if_false 0x023E ; pop a value, if it's zero, jump to imm16
0237: pushi 0x0018 ; push imm16
023A: pushi 0x0000 ; push imm16
023D: store ; pops a value, pop an address, store the value in memory[addr]
023E: jmp 0x0118 ; jump to imm16
0241: pushi 0x0017 ; push imm16
0244: load ; push the contents of memory[pop()]
0245: pushi 0x0010 ; push imm16
0248: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
0249: jmp_if_false 0x0253 ; pop a value, if it's zero, jump to imm16
024C: pushi 0x0019 ; push imm16
024F: pushi 0x0001 ; push imm16
0252: store ; pops a value, pop an address, store the value in memory[addr]
0253: pushi 0x0019 ; push imm16
0256: load ; push the contents of memory[pop()]
0257: pop_check2 ; store the top of the stack into the 'check' variable
0258: ret ; return from vm (done)
Disassembly:
pushi 0x0000
pushi 0xBBAA
store
pushi 0x0001
pushi 0xDDCC
store
pushi 0x0002
pushi 0xFFEE
store
pushi 0x0003
pushi 0xADDE
store
pushi 0x0004
pushi 0xEFBE
store
pushi 0x0005
pushi 0xFECA
store
pushi 0x0006
pushi 0xBEBA
store
pushi 0x0007
pushi 0xCDAB
store
pushi 0x000A
pushi 0x6144
store
pushi 0x000B
pushi 0x7534
store
pushi 0x000C
pushi 0x6962
store
pushi 0x000D
pushi 0x6C63
store
pushi 0x000E
pushi 0x3165
store
pushi 0x000F
pushi 0x6669
store
pushi 0x0010
pushi 0x6265
store
pushi 0x0011
pushi 0x6230
store
pushi 0x0008
pushi 0x0003
load
pushi 0x0030
shl
pushi 0x0002
load
pushi 0x0020
shl
or
pushi 0x0001
load
pushi 0x0010
shl
or
pushi 0x0000
load
or
store
pushi 0x0009
pushi 0x0007
load
pushi 0x0030
shl
pushi 0x0006
load
pushi 0x0020
shl
or
pushi 0x0005
load
pushi 0x0010
shl
or
pushi 0x0004
load
or
store
pushi 0x0012
pushi 0x000D
load
pushi 0x0030
shl
pushi 0x000C
load
pushi 0x0020
shl
or
pushi 0x000B
load
pushi 0x0010
shl
or
pushi 0x000A
load
or
store
pushi 0x0013
pushi 0x0011
load
pushi 0x0030
shl
pushi 0x0010
load
pushi 0x0020
shl
or
pushi 0x000F
load
pushi 0x0010
shl
or
pushi 0x000E
load
or
store
pushi 0x0014
pushi 0x0000
store
pushi 0x0018
pushi 0x0001
store
pushi 0x0017
pushi 0x0000
store
pushi 0x0019
pushi 0x0000
store
pushi 0x0018
load
pushi 0x0001
is_eq
jmp_if_false 0x0241
pushi 0x0014
load
pushi 0x0008
is_less
jmp_if_false 0x0150
pushi 0x0015
pushi 0x0008
load
pushi 0x0008
pushi 0x0014
load
mul
shr
store
pushi 0x0016
pushi 0x0012
load
pushi 0x0008
pushi 0x0014
load
mul
shr
store
pushi 0x0014
load
pushi 0x0007
is_greater
jmp_if_false 0x017D
pushi 0x0015
pushi 0x0009
load
pushi 0x0008
pushi 0x0014
load
mul
shr
store
pushi 0x0016
pushi 0x0013
load
pushi 0x0008
pushi 0x0014
load
mul
shr
store
pushi 0x0015
pushi 0x0015
load
pushi 0x00FF
and
store
pushi 0x0016
pushi 0x0016
load
pushi 0x00FF
and
store
pushi 0x0014
load
pushi 0x0002
is_eq
jmp_if_false 0x01AC
pushi 0x0016
pushi 0x0016
load
pushi 0x0004
rotl8
store
pushi 0x0014
load
pushi 0x0009
is_eq
jmp_if_false 0x01C3
pushi 0x0016
pushi 0x0016
load
pushi 0x0002
rotr8
store
pushi 0x0014
load
pushi 0x000D
is_eq
jmp_if_false 0x01DA
pushi 0x0016
pushi 0x0016
load
pushi 0x0007
rotl8
store
pushi 0x0014
load
pushi 0x000F
is_eq
jmp_if_false 0x01F1
pushi 0x0016
pushi 0x0016
load
pushi 0x0007
rotl8
store
pushi 0x0015
load
pushi 0x0016
load
is_eq
pushi 0x0000
is_eq
jmp_if_false 0x0208
pushi 0x0018
pushi 0x0000
store
pushi 0x0015
load
pushi 0x0016
load
is_eq
jmp_if_false 0x0220
pushi 0x0017
pushi 0x0017
load
pushi 0x0001
add
store
pushi 0x0014
pushi 0x0014
load
pushi 0x0001
add
store
pushi 0x0014
load
pushi 0x000F
is_greater
jmp_if_false 0x023E
pushi 0x0018
pushi 0x0000
store
jmp 0x0118
pushi 0x0017
load
pushi 0x0010
is_eq
jmp_if_false 0x0253
pushi 0x0019
pushi 0x0001
store
pushi 0x0019
load
pop_check2
ret
