namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functionf8808880LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[3] ], target);
	    Controlled XWrap ([ controls[0], controls[1], controls[2] ], target);
	    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[3], controls[4] ], target);
	    Controlled XWrap ([ controls[0], controls[1], controls[3] ], target);
	    Controlled XWrap ([ controls[2], controls[3], controls[4] ], target);
	
		}
	
	
}