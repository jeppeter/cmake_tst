#pragma once

#	if defined(CM_EXPORTS)
#			define CM_API  extern "C"  __declspec(dllexport)
#	else
#			define CM_API  extern "C" __declspec(dllimport)
#	endif


CM_API int CmAdd(int a,int b);