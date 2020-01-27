namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function78888888LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    CCNOT(controls[0], controls[1], target);
	    Controlled XWrap ([ controls[2], controls[3], controls[4] ], target);
	
		}
	 
}