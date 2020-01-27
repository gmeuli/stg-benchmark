namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functiona8888880LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    X(controls[2]);
	    X(controls[3]);
	    X(controls[4]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[3], controls[4] ], target);
	    X(controls[2]);
	    X(controls[3]);
	    X(controls[4]);
	    CCNOT(controls[0], controls[1], target);
	    X(controls[1]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[3], controls[4] ], target);
	    X(controls[1]);
	
		}
	
	
}