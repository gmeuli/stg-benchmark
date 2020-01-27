namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function7080LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[1] )
	  {
	    ApplyAnd(controls[1], controls[0], anc[0]);
	    CNOT(anc[0], controls[3] );
	    ApplyAnd(controls[2], controls[3], target);
	    CNOT(anc[0], controls[3] );
	    Adjoint ApplyAnd(controls[1], controls[0], anc[0]);
	
	  }
	}
	
}