namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function7888LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[2] )
	  {
	    ApplyAnd(controls[2], controls[3], anc[0]);
	    ApplyAnd(controls[0], controls[1], anc[1]);
	    CNOT(anc[1], target );
	    CNOT(anc[0], target );
	    Adjoint ApplyAnd(controls[0], controls[1], anc[1]);
	    Adjoint ApplyAnd(controls[2], controls[3], anc[0]);
	
	  }
	}
	
}