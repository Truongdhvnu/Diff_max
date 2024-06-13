/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_661(char*, char *);
extern void execute_662(char*, char *);
extern void execute_663(char*, char *);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_46(char*, char *);
extern void execute_80(char*, char *);
extern void execute_81(char*, char *);
extern void execute_170(char*, char *);
extern void execute_172(char*, char *);
extern void execute_175(char*, char *);
extern void execute_178(char*, char *);
extern void execute_181(char*, char *);
extern void execute_183(char*, char *);
extern void execute_186(char*, char *);
extern void execute_190(char*, char *);
extern void execute_192(char*, char *);
extern void execute_193(char*, char *);
extern void execute_194(char*, char *);
extern void execute_196(char*, char *);
extern void execute_197(char*, char *);
extern void execute_198(char*, char *);
extern void execute_226(char*, char *);
extern void execute_227(char*, char *);
extern void execute_262(char*, char *);
extern void execute_265(char*, char *);
extern void execute_277(char*, char *);
extern void execute_356(char*, char *);
extern void execute_359(char*, char *);
extern void execute_362(char*, char *);
extern void execute_367(char*, char *);
extern void execute_371(char*, char *);
extern void execute_380(char*, char *);
extern void execute_438(char*, char *);
extern void execute_447(char*, char *);
extern void execute_476(char*, char *);
extern void execute_477(char*, char *);
extern void execute_478(char*, char *);
extern void execute_479(char*, char *);
extern void execute_480(char*, char *);
extern void execute_481(char*, char *);
extern void execute_482(char*, char *);
extern void execute_508(char*, char *);
extern void execute_509(char*, char *);
extern void execute_510(char*, char *);
extern void execute_515(char*, char *);
extern void execute_549(char*, char *);
extern void execute_573(char*, char *);
extern void execute_574(char*, char *);
extern void execute_575(char*, char *);
extern void execute_576(char*, char *);
extern void execute_577(char*, char *);
extern void execute_578(char*, char *);
extern void execute_579(char*, char *);
extern void execute_580(char*, char *);
extern void execute_609(char*, char *);
extern void transaction_1(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_101(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_115(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_122(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_145(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_149(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_151(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_152(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_153(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_155(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_157(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_158(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_159(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_160(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_161(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_162(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_164(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_165(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_166(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_167(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_168(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_169(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_170(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_171(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_173(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_175(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_176(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_177(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_179(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_180(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_183(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_186(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_187(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_189(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_190(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_191(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_192(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_193(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_194(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_203(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_207(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_210(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_211(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_212(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_213(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_214(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_215(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_216(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_217(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_218(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_219(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_220(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_221(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_222(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_223(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_224(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_234(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_247(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_254(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_261(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_268(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_275(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_282(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_289(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_296(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_309(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_316(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_323(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_330(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_337(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_344(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_351(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_358(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_376(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_383(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_390(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_397(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_404(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_411(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_418(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_425(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_440(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_441(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_442(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_443(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_444(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_445(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_446(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_447(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_448(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_449(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_450(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_451(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_452(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_453(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_454(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_455(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_456(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_457(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_458(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_459(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_460(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_461(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_462(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_466(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_468(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_475(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_482(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_489(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_496(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_503(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_510(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_517(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_561(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_568(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_575(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_582(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_589(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_596(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_603(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_610(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_639(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_646(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_653(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_660(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_667(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_674(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_681(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_688(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[224] = {(funcp)execute_661, (funcp)execute_662, (funcp)execute_663, (funcp)execute_22, (funcp)execute_23, (funcp)execute_46, (funcp)execute_80, (funcp)execute_81, (funcp)execute_170, (funcp)execute_172, (funcp)execute_175, (funcp)execute_178, (funcp)execute_181, (funcp)execute_183, (funcp)execute_186, (funcp)execute_190, (funcp)execute_192, (funcp)execute_193, (funcp)execute_194, (funcp)execute_196, (funcp)execute_197, (funcp)execute_198, (funcp)execute_226, (funcp)execute_227, (funcp)execute_262, (funcp)execute_265, (funcp)execute_277, (funcp)execute_356, (funcp)execute_359, (funcp)execute_362, (funcp)execute_367, (funcp)execute_371, (funcp)execute_380, (funcp)execute_438, (funcp)execute_447, (funcp)execute_476, (funcp)execute_477, (funcp)execute_478, (funcp)execute_479, (funcp)execute_480, (funcp)execute_481, (funcp)execute_482, (funcp)execute_508, (funcp)execute_509, (funcp)execute_510, (funcp)execute_515, (funcp)execute_549, (funcp)execute_573, (funcp)execute_574, (funcp)execute_575, (funcp)execute_576, (funcp)execute_577, (funcp)execute_578, (funcp)execute_579, (funcp)execute_580, (funcp)execute_609, (funcp)transaction_1, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_41, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_87, (funcp)transaction_94, (funcp)transaction_101, (funcp)transaction_108, (funcp)transaction_115, (funcp)transaction_122, (funcp)transaction_129, (funcp)transaction_145, (funcp)transaction_146, (funcp)transaction_147, (funcp)transaction_148, (funcp)transaction_149, (funcp)transaction_150, (funcp)transaction_151, (funcp)transaction_152, (funcp)transaction_153, (funcp)transaction_154, (funcp)transaction_155, (funcp)transaction_156, (funcp)transaction_157, (funcp)transaction_158, (funcp)transaction_159, (funcp)transaction_160, (funcp)transaction_161, (funcp)transaction_162, (funcp)transaction_163, (funcp)transaction_164, (funcp)transaction_165, (funcp)transaction_166, (funcp)transaction_167, (funcp)transaction_168, (funcp)transaction_169, (funcp)transaction_170, (funcp)transaction_171, (funcp)transaction_172, (funcp)transaction_173, (funcp)transaction_174, (funcp)transaction_175, (funcp)transaction_176, (funcp)transaction_177, (funcp)transaction_178, (funcp)transaction_179, (funcp)transaction_180, (funcp)transaction_181, (funcp)transaction_182, (funcp)transaction_183, (funcp)transaction_184, (funcp)transaction_186, (funcp)transaction_187, (funcp)transaction_188, (funcp)transaction_189, (funcp)transaction_190, (funcp)transaction_191, (funcp)transaction_192, (funcp)transaction_193, (funcp)transaction_194, (funcp)transaction_195, (funcp)transaction_202, (funcp)transaction_203, (funcp)transaction_206, (funcp)transaction_207, (funcp)transaction_208, (funcp)transaction_209, (funcp)transaction_210, (funcp)transaction_211, (funcp)transaction_212, (funcp)transaction_213, (funcp)transaction_214, (funcp)transaction_215, (funcp)transaction_216, (funcp)transaction_217, (funcp)transaction_218, (funcp)transaction_219, (funcp)transaction_220, (funcp)transaction_221, (funcp)transaction_222, (funcp)transaction_223, (funcp)transaction_224, (funcp)transaction_234, (funcp)transaction_247, (funcp)transaction_254, (funcp)transaction_261, (funcp)transaction_268, (funcp)transaction_275, (funcp)transaction_282, (funcp)transaction_289, (funcp)transaction_296, (funcp)transaction_309, (funcp)transaction_316, (funcp)transaction_323, (funcp)transaction_330, (funcp)transaction_337, (funcp)transaction_344, (funcp)transaction_351, (funcp)transaction_358, (funcp)transaction_376, (funcp)transaction_383, (funcp)transaction_390, (funcp)transaction_397, (funcp)transaction_404, (funcp)transaction_411, (funcp)transaction_418, (funcp)transaction_425, (funcp)transaction_440, (funcp)transaction_441, (funcp)transaction_442, (funcp)transaction_443, (funcp)transaction_444, (funcp)transaction_445, (funcp)transaction_446, (funcp)transaction_447, (funcp)transaction_448, (funcp)transaction_449, (funcp)transaction_450, (funcp)transaction_451, (funcp)transaction_452, (funcp)transaction_453, (funcp)transaction_454, (funcp)transaction_455, (funcp)transaction_456, (funcp)transaction_457, (funcp)transaction_458, (funcp)transaction_459, (funcp)transaction_460, (funcp)transaction_461, (funcp)transaction_462, (funcp)transaction_466, (funcp)transaction_468, (funcp)transaction_475, (funcp)transaction_482, (funcp)transaction_489, (funcp)transaction_496, (funcp)transaction_503, (funcp)transaction_510, (funcp)transaction_517, (funcp)transaction_561, (funcp)transaction_568, (funcp)transaction_575, (funcp)transaction_582, (funcp)transaction_589, (funcp)transaction_596, (funcp)transaction_603, (funcp)transaction_610, (funcp)transaction_639, (funcp)transaction_646, (funcp)transaction_653, (funcp)transaction_660, (funcp)transaction_667, (funcp)transaction_674, (funcp)transaction_681, (funcp)transaction_688};
const int NumRelocateId= 224;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Max_Diff_tb3_func_synth/xsim.reloc",  (void **)funcTab, 224);
	iki_vhdl_file_variable_register(dp + 157176);
	iki_vhdl_file_variable_register(dp + 157232);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Max_Diff_tb3_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/Max_Diff_tb3_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Max_Diff_tb3_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Max_Diff_tb3_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Max_Diff_tb3_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
