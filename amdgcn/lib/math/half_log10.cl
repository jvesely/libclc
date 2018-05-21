#include <clc/clc.h>
 
#define __CLC_FUNC log10
#define __FLOAT_ONLY
#define __CLC_BODY "../../../amdgpu/lib/math/half_native_unary.inc"
#include <clc/math/gentype.inc>
