namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function6ac8e000LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    X(controls[1]);
	    X(controls[4]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[3], controls[4] ], target);
	    X(controls[1]);
	    X(controls[4]);
	    Controlled XWrap ([ controls[1], controls[2], controls[3] ], target);
	    X(controls[1]);
	    X(controls[3]);
	    Controlled XWrap ([ controls[0], controls[1], controls[3], controls[4] ], target);
	    X(controls[1]);
	    X(controls[3]);
	    CCNOT(controls[0], controls[4], target);
	    X(controls[0]);
	    X(controls[3]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[3], controls[4] ], target);
	    X(controls[0]);
	    X(controls[3]);
	
		}
	
	
}