namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functiona8808080LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    Controlled XWrap ([ controls[0], controls[1], controls[2] ], target);
	    X(controls[2]);
	    Controlled XWrap ([ controls[0], controls[2], controls[3], controls[4] ], target);
	    X(controls[2]);
	    X(controls[1]);
	    Controlled XWrap ([ controls[0], controls[1], controls[3], controls[4] ], target);
	    X(controls[1]);
	
		}
	
	
}