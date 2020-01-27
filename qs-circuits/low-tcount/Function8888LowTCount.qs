namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function8888LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
			    ApplyAnd(controls[0], controls[1], target);
	
		}
	
}