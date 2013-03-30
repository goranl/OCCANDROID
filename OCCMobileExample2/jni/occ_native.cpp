#include "occ_mobile_example2_OCC.h"

#include <BRepPrimAPI_MakeTorus.hxx>
#include <GProp_GProps.hxx>
#include <BRepGProp.hxx>

JNIEXPORT jdouble JNICALL Java_occ_mobile_example2_OCC_result
  (JNIEnv * env, jobject obj, jdouble value1, jdouble value2) {

	BRepPrimAPI_MakeTorus aTorus(value1, value2);

	GProp_GProps aSystemV, aSystemS;
	BRepGProp::VolumeProperties (aTorus.Shape(), aSystemV);
	BRepGProp::SurfaceProperties(aTorus.Shape(), aSystemS);

	Standard_Real aVolume  = aSystemV.Mass();

	return (aVolume);
}

