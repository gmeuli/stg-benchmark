namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functiona8e0c800LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    Controlled XWrap ([ controls[0], controls[1], controls[3] ], target);
	    X(controls[0]);
	    X(controls[4]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[3], controls[4] ], target);
	    X(controls[0]);
	    X(controls[4]);
	    X(controls[1]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[4] ], target);
	    X(controls[1]);
	    X(controls[3]);
	    Controlled XWrap ([ controls[1], controls[2], controls[3], controls[4] ], target);
	    X(controls[3]);
	
		}
	
	
}