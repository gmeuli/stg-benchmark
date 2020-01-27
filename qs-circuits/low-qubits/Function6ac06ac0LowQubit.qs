namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function6ac06ac0LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    CCNOT(controls[1], controls[2], target);
	    CCNOT(controls[0], controls[3], target);
	
		}
	
	
}