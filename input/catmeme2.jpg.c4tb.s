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
003B: pushi 0xA059 ; push imm16
003E: store ; pops a value, pop an address, store the value in memory[addr]
003F: pushi 0x000B ; push imm16
0042: pushi 0x6A4D ; push imm16
0045: store ; pops a value, pop an address, store the value in memory[addr]
0046: pushi 0x000C ; push imm16
0049: pushi 0xDE23 ; push imm16
004C: store ; pops a value, pop an address, store the value in memory[addr]
004D: pushi 0x000D ; push imm16
0050: pushi 0x24C0 ; push imm16
0053: store ; pops a value, pop an address, store the value in memory[addr]
0054: pushi 0x000E ; push imm16
0057: pushi 0x64E2 ; push imm16
005A: store ; pops a value, pop an address, store the value in memory[addr]
005B: pushi 0x000F ; push imm16
005E: pushi 0x59B1 ; push imm16
0061: store ; pops a value, pop an address, store the value in memory[addr]
0062: pushi 0x0010 ; push imm16
0065: pushi 0x7207 ; push imm16
0068: store ; pops a value, pop an address, store the value in memory[addr]
0069: pushi 0x0011 ; push imm16
006C: pushi 0x7F5C ; push imm16
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
0103: pushi 0x0015 ; push imm16
0106: pushi 0x0001 ; push imm16
0109: store ; pops a value, pop an address, store the value in memory[addr]
010A: pushi 0x0016 ; push imm16
010D: pushi 0x0000 ; push imm16
0110: store ; pops a value, pop an address, store the value in memory[addr]
0111: pushi 0x0017 ; push imm16
0114: pushi 0x0000 ; push imm16
0117: store ; pops a value, pop an address, store the value in memory[addr]
0118: pushi 0x001C ; push imm16
011B: pushi 0x43FD ; push imm16
011E: pushi 0x0003 ; push imm16
0121: pushi 0x0010 ; push imm16
0124: shl ; pop value1, pop value2, push value2 << value1
0125: or ; pop two values, or them, push the result
0126: store ; pops a value, pop an address, store the value in memory[addr]
0127: pushi 0x001D ; push imm16
012A: pushi 0x9EC3 ; push imm16
012D: pushi 0x0026 ; push imm16
0130: pushi 0x0010 ; push imm16
0133: shl ; pop value1, pop value2, push value2 << value1
0134: or ; pop two values, or them, push the result
0135: store ; pops a value, pop an address, store the value in memory[addr]
0136: pushi 0x001B ; push imm16
0139: pushi 0x0001 ; push imm16
013C: pushi 0x001F ; push imm16
013F: shl ; pop value1, pop value2, push value2 << value1
0140: store ; pops a value, pop an address, store the value in memory[addr]
0141: pushi 0x001E ; push imm16
0144: pushi 0x1337 ; push imm16
0147: store ; pops a value, pop an address, store the value in memory[addr]
0148: pushi 0x0015 ; push imm16
014B: load ; push the contents of memory[pop()]
014C: pushi 0x0001 ; push imm16
014F: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
0150: jmp_if_false 0x0262 ; pop a value, if it's zero, jump to imm16
0153: pushi 0x0014 ; push imm16
0156: load ; push the contents of memory[pop()]
0157: pushi 0x0008 ; push imm16
015A: is_less ; pop two values, compare them, push 1 if less, 0 if not
015B: jmp_if_false 0x0180 ; pop a value, if it's zero, jump to imm16
015E: pushi 0x0018 ; push imm16
0161: pushi 0x0008 ; push imm16
0164: load ; push the contents of memory[pop()]
0165: pushi 0x0008 ; push imm16
0168: pushi 0x0014 ; push imm16
016B: load ; push the contents of memory[pop()]
016C: mul ; pop two values, multiply them, push the result
016D: shr ; pop value1, pop value2, push value2 >> value1
016E: store ; pops a value, pop an address, store the value in memory[addr]
016F: pushi 0x0019 ; push imm16
0172: pushi 0x0012 ; push imm16
0175: load ; push the contents of memory[pop()]
0176: pushi 0x0008 ; push imm16
0179: pushi 0x0014 ; push imm16
017C: load ; push the contents of memory[pop()]
017D: mul ; pop two values, multiply them, push the result
017E: shr ; pop value1, pop value2, push value2 >> value1
017F: store ; pops a value, pop an address, store the value in memory[addr]
0180: pushi 0x0014 ; push imm16
0183: load ; push the contents of memory[pop()]
0184: pushi 0x0007 ; push imm16
0187: is_greater ; pop value1, pop value2, push 1 if value2 > value1, 0 if not
0188: jmp_if_false 0x01AD ; pop a value, if it's zero, jump to imm16
018B: pushi 0x0018 ; push imm16
018E: pushi 0x0009 ; push imm16
0191: load ; push the contents of memory[pop()]
0192: pushi 0x0008 ; push imm16
0195: pushi 0x0014 ; push imm16
0198: load ; push the contents of memory[pop()]
0199: mul ; pop two values, multiply them, push the result
019A: shr ; pop value1, pop value2, push value2 >> value1
019B: store ; pops a value, pop an address, store the value in memory[addr]
019C: pushi 0x0019 ; push imm16
019F: pushi 0x0013 ; push imm16
01A2: load ; push the contents of memory[pop()]
01A3: pushi 0x0008 ; push imm16
01A6: pushi 0x0014 ; push imm16
01A9: load ; push the contents of memory[pop()]
01AA: mul ; pop two values, multiply them, push the result
01AB: shr ; pop value1, pop value2, push value2 >> value1
01AC: store ; pops a value, pop an address, store the value in memory[addr]
01AD: pushi 0x0018 ; push imm16
01B0: pushi 0x0018 ; push imm16
01B3: load ; push the contents of memory[pop()]
01B4: pushi 0x00FF ; push imm16
01B7: and ; pop two values, and them, push the result
01B8: store ; pops a value, pop an address, store the value in memory[addr]
01B9: pushi 0x0019 ; push imm16
01BC: pushi 0x0019 ; push imm16
01BF: load ; push the contents of memory[pop()]
01C0: pushi 0x00FF ; push imm16
01C3: and ; pop two values, and them, push the result
01C4: store ; pops a value, pop an address, store the value in memory[addr]
01C5: pushi 0x001E ; push imm16
01C8: pushi 0x001C ; push imm16
01CB: load ; push the contents of memory[pop()]
01CC: pushi 0x001E ; push imm16
01CF: load ; push the contents of memory[pop()]
01D0: mul ; pop two values, multiply them, push the result
01D1: pushi 0x001D ; push imm16
01D4: load ; push the contents of memory[pop()]
01D5: add ; pop two values, add them, push the result
01D6: pushi 0x001B ; push imm16
01D9: load ; push the contents of memory[pop()]
01DA: mod ; pop value1, pop value2, push value2 % value1
01DB: store ; pops a value, pop an address, store the value in memory[addr]
01DC: pushi 0x001A ; push imm16
01DF: pushi 0x001E ; push imm16
01E2: load ; push the contents of memory[pop()]
01E3: store ; pops a value, pop an address, store the value in memory[addr]
01E4: pushi 0x001A ; push imm16
01E7: pushi 0x001E ; push imm16
01EA: load ; push the contents of memory[pop()]
01EB: pushi 0x0008 ; push imm16
01EE: pushi 0x0014 ; push imm16
01F1: load ; push the contents of memory[pop()]
01F2: pushi 0x0004 ; push imm16
01F5: mod ; pop value1, pop value2, push value2 % value1
01F6: mul ; pop two values, multiply them, push the result
01F7: shr ; pop value1, pop value2, push value2 >> value1
01F8: store ; pops a value, pop an address, store the value in memory[addr]
01F9: pushi 0x001F ; push imm16
01FC: pushi 0x001A ; push imm16
01FF: load ; push the contents of memory[pop()]
0200: pushi 0x00FF ; push imm16
0203: and ; pop two values, and them, push the result
0204: store ; pops a value, pop an address, store the value in memory[addr]
0205: pushi 0x0020 ; push imm16
0208: pushi 0x0018 ; push imm16
020B: load ; push the contents of memory[pop()]
020C: pushi 0x001F ; push imm16
020F: load ; push the contents of memory[pop()]
0210: xor ; pop two values, xor them, push the result
0211: store ; pops a value, pop an address, store the value in memory[addr]
0212: pushi 0x0020 ; push imm16
0215: load ; push the contents of memory[pop()]
0216: pushi 0x0019 ; push imm16
0219: load ; push the contents of memory[pop()]
021A: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
021B: pushi 0x0000 ; push imm16
021E: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
021F: jmp_if_false 0x0229 ; pop a value, if it's zero, jump to imm16
0222: pushi 0x0015 ; push imm16
0225: pushi 0x0000 ; push imm16
0228: store ; pops a value, pop an address, store the value in memory[addr]
0229: pushi 0x0020 ; push imm16
022C: load ; push the contents of memory[pop()]
022D: pushi 0x0019 ; push imm16
0230: load ; push the contents of memory[pop()]
0231: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
0232: jmp_if_false 0x0241 ; pop a value, if it's zero, jump to imm16
0235: pushi 0x0016 ; push imm16
0238: pushi 0x0016 ; push imm16
023B: load ; push the contents of memory[pop()]
023C: pushi 0x0001 ; push imm16
023F: add ; pop two values, add them, push the result
0240: store ; pops a value, pop an address, store the value in memory[addr]
0241: pushi 0x0014 ; push imm16
0244: pushi 0x0014 ; push imm16
0247: load ; push the contents of memory[pop()]
0248: pushi 0x0001 ; push imm16
024B: add ; pop two values, add them, push the result
024C: store ; pops a value, pop an address, store the value in memory[addr]
024D: pushi 0x0014 ; push imm16
0250: load ; push the contents of memory[pop()]
0251: pushi 0x000F ; push imm16
0254: is_greater ; pop value1, pop value2, push 1 if value2 > value1, 0 if not
0255: jmp_if_false 0x025F ; pop a value, if it's zero, jump to imm16
0258: pushi 0x0015 ; push imm16
025B: pushi 0x0000 ; push imm16
025E: store ; pops a value, pop an address, store the value in memory[addr]
025F: jmp 0x0148 ; jump to imm16
0262: pushi 0x0016 ; push imm16
0265: load ; push the contents of memory[pop()]
0266: pushi 0x0010 ; push imm16
0269: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
026A: jmp_if_false 0x0274 ; pop a value, if it's zero, jump to imm16
026D: pushi 0x0017 ; push imm16
0270: pushi 0x0001 ; push imm16
0273: store ; pops a value, pop an address, store the value in memory[addr]
0274: pushi 0x0016 ; push imm16
0277: load ; push the contents of memory[pop()]
0278: pushi 0x0010 ; push imm16
027B: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
027C: pushi 0x0000 ; push imm16
027F: is_eq ; pop two values, compare them, push 1 if equal, 0 if not
0280: jmp_if_false 0x028A ; pop a value, if it's zero, jump to imm16
0283: pushi 0x0017 ; push imm16
0286: pushi 0x0000 ; push imm16
0289: store ; pops a value, pop an address, store the value in memory[addr]
028A: pushi 0x0017 ; push imm16
028D: load ; push the contents of memory[pop()]
028E: pop_check2 ; store the top of the stack into the 'check' variable
028F: ret ; return from vm (done)
