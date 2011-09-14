package occ.mobile.example2;

import android.util.Log;

/**
 * 	@author Goran Lukic
 * 	@since  04.09.2011
 */

public class OCC {

  static 
  {
	 try {
	  	  System.loadLibrary("TKernel");  
	  	  System.loadLibrary("TKMath"); 
	  	  System.loadLibrary("TKG2d");
	  	  System.loadLibrary("TKG3d");
	  	  System.loadLibrary("TKGeomBase");    
		  System.loadLibrary("TKBRep");
		  System.loadLibrary("TKGeomAlgo");
		  System.loadLibrary("TKTopAlgo");    
		  System.loadLibrary("TKPrim");   
	  	  System.loadLibrary("occ_native");
	  	  
	  } catch (UnsatisfiedLinkError use) {
		    Log.e("OCC", "WARNING:WARNING:WARNING: Could not load librarys");
		}
  }

  public native double result( double v1, double v2 );

}
