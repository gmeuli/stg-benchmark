namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function7880LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    X(controls[3]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[3] ], target);
	    X(controls[3]);
	    Controlled XWrap ([ controls[0], controls[1], controls[3] ], target);
	    CCNOT(controls[2], controls[3], target);
	
		}
}