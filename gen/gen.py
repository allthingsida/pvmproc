from vmspecs import specs


def gen_ins_hpp(specs):
    serial_index = 0
    rsvd_index = 0

    prefix = 'PVM'
    for op_code, meta in sorted(specs.items(), key=lambda x: x[0]):
        if op_code > serial_index:
            # catch up and emit fillers
            for i in range(serial_index, op_code):
                print(f'{prefix}_{rsvd_index}, // Reserved ({i})')
                rsvd_index += 1
        serial_index = op_code + 1
        print(f'{prefix}_{meta["name"].upper()}, // {meta["description"]} ({op_code})')


def gen_ins_cpp(specs):
    #  { "",               0                               }, // Unknown Operation
    #  { "xori",           CF_USE1|CF_USE2|CF_CHG3         }, // Exclusive Or Immediate
    serial_index = 0
    for op_code, meta in sorted(specs.items(), key=lambda x: x[0]):
        if op_code > serial_index:
            # catch up and emit fillers
            for _ in range(serial_index, op_code):
                print(f'{{"", 0}}, // Unknown Operation')
        serial_index = op_code + 1

        use_flags = 'CF_USE1' if meta['args_size'] > 0 else '0'
        print(f'{{"{meta['name'].lower()}", {use_flags}}}, // {meta["description"]}')


def main():
    #gen_ins_hpp(specs)
    gen_ins_cpp(specs)


if __name__ == '__main__':
    main()
