namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function2888a000LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[2] )
	  {
	    ApplyAnd(controls[2], controls[3], anc[0]);
	    CNOT(controls[4], controls[1] );
	    ApplyAnd(controls[4], controls[1], anc[1]);
	    CNOT(controls[4], controls[1] );
	    CNOT(anc[0], controls[4] );
	    CNOT(anc[1], controls[4] );
	    ApplyAnd(controls[0], controls[4], target);
	    CNOT(anc[0], controls[4] );
	    CNOT(anc[1], controls[4] );
	    CNOT(controls[4], controls[1] );
	    Adjoint ApplyAnd(controls[4], controls[1], anc[1]);
	    CNOT(controls[4], controls[1] );
	    Adjoint ApplyAnd(controls[2], controls[3], anc[0]);
	
	  }
	}
}