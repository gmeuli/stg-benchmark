namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function6ac06ac0LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[2] )
	  {
	    ApplyAnd(controls[1], controls[2], anc[0]);
	    ApplyAnd(controls[0], controls[3], anc[1]);
	    CNOT(anc[1], target );
	    CNOT(anc[0], target );
	    Adjoint ApplyAnd(controls[0], controls[3], anc[1]);
	    Adjoint ApplyAnd(controls[1], controls[2], anc[0]);
	
	  }
	}
}