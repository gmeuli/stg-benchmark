namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function8080LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    Controlled XWrap ([ controls[0], controls[1], controls[2] ], target);
	
		}
}