namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functione880e880LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    X(controls[0]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2] ], target);
	    X(controls[0]);
	    Controlled XWrap ([ controls[0], controls[1], controls[3] ], target);
	    X(controls[0]);
	    X(controls[1]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[3] ], target);
	    X(controls[0]);
	    X(controls[1]);
	    X(controls[1]);
	    CCNOT(controls[1], controls[2], target);
	    X(controls[1]);
	    X(controls[3]);
	    CCNOT(controls[2], controls[3], target);
	    X(controls[3]);
	
		}
	
}