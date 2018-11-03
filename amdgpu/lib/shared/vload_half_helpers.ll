#ifdef __AMDGCN__
#  if __clang_major__ >= 7
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5"
#  else
target datalayout = "e-p:32:32-p1:64:64-p2:64:64-p3:32:32-p4:64:64-p5:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64"
#  endif
#elif defined __R600__
#  if __clang_major__ >= 7
target datalayout = "e-p:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5"
#  else
target datalayout = "e-p:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64"
#  endif
#endif

define float @__clc_vload_half_float_helper__private(half addrspace(0)* nocapture %ptr) nounwind alwaysinline {
  %data = load half, half addrspace(0)* %ptr
  %res = fpext half %data to float
  ret float %res
}

define float @__clc_vload_half_float_helper__global(half addrspace(1)* nocapture %ptr) nounwind alwaysinline {
  %data = load half, half addrspace(1)* %ptr
  %res = fpext half %data to float
  ret float %res
}

define float @__clc_vload_half_float_helper__local(half addrspace(3)* nocapture %ptr) nounwind alwaysinline {
  %data = load half, half addrspace(3)* %ptr
  %res = fpext half %data to float
  ret float %res
}

define float @__clc_vload_half_float_helper__constant(half addrspace(2)* nocapture %ptr) nounwind alwaysinline {
  %data = load half, half addrspace(2)* %ptr
  %res = fpext half %data to float
  ret float %res
}
