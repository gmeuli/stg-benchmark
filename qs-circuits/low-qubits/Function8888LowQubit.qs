namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function8888LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    CCNOT(controls[0], controls[1], target);
	
		}
}