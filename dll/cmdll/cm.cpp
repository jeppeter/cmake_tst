
#include "cm.h"
#include <cmlib.h>

extern "C" int CmAdd(int a,int b)
{
	return EncapLib(a) + EncapLib(b);
}