namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function8080LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[1] )
	  {
	    ApplyAnd(controls[1], controls[2], anc[0]);
	    ApplyAnd(controls[0], anc[0], target);
	    Adjoint ApplyAnd(controls[1], controls[2], anc[0]);
	
	  }
	}
	
}