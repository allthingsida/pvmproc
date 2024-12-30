/*
  PigletVM processor module for IDA Pro

  by Elias Bachaalany / AllThingsIDA
*/

#include "pigletvm.hpp"

//--------------------------------------------------------------------------
class out_pigletvm_t : public outctx_t
{
    out_pigletvm_t(void) = delete; // not used
    pigletvm_t& pm() { return *static_cast<pigletvm_t*>(procmod); }

public:
    bool out_operand(const op_t& x)
    {
        switch (x.type)
        {
            case o_void:
                return false;
            case o_reg:
                out_register(ph.reg_names[x.reg]);
                break;
            case o_imm:
                out_value(x, OOFW_IMM);
                break;
            case o_near:
            case o_mem:
                if (!out_name_expr(x, pm().trunc_uval(x.addr), BADADDR))
                {
                    out_tagon(COLOR_ERROR);
                    out_value(x, OOF_ADDR | OOFW_IMM | OOFW_32);
                    out_tagoff(COLOR_ERROR);
                    remember_problem(PR_NONAME, insn.ea);
                }
                break;
            default:
                return false;
        }
        return true;
    }

    void out_insn(void)
    {
        out_mnemonic();
        out_one_operand(0); // eventually calls: out_operand()
        // output a character representation of the immediate values
        // embedded in the instruction as comments
        out_immchar_cmts();
        flush_outbuf();
    }
};
CASSERT(sizeof(out_pigletvm_t) == sizeof(outctx_t));

DECLARE_OUT_FUNCS_WITHOUT_OUTMNEM(out_pigletvm_t)

//-------------------------------------------------------------------------
int pigletvm_t::out_segstart(outctx_t& ctx, segment_t* s)
{
    qstring sname;
    qstring sclass;

    get_visible_segm_name(&sname, s);
    get_segm_class(&sclass, s);

    const char* p_class;
    if ((s->perm == (SEGPERM_READ | SEGPERM_WRITE)) && s->type == SEG_BSS)
        p_class = "bss";
    else if (s->perm == SEGPERM_READ)
        p_class = "const";
    else if (s->perm == (SEGPERM_READ | SEGPERM_WRITE))
        p_class = "data";
    else if (s->perm == (SEGPERM_READ | SEGPERM_EXEC))
        p_class = "text";
    else if (s->type == SEG_XTRN)
        p_class = "symtab";
    else
        p_class = sclass.c_str();

    ctx.gen_printf(0, COLSTR(".section \"%s\", %s", SCOLOR_ASMDIR), sname.c_str(), p_class);

    return 1;
}