namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functiona888a080LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    CCNOT(controls[0], controls[2], target);
	    X(controls[1]);
	    X(controls[3]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[3] ], target);
	    X(controls[1]);
	    X(controls[3]);
	    X(controls[2]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[4] ], target);
	    X(controls[2]);
	
		}
	
	
}