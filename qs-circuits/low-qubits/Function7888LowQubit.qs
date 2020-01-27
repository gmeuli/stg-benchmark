namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function7888LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    CCNOT(controls[0], controls[1], target);
	    CCNOT(controls[2], controls[3], target);
	
		}
	
}