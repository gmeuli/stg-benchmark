namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functione1808880LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[3] )
	  {
	    CNOT(controls[1], controls[0] );
	    ApplyAnd(controls[1], controls[0], anc[0]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[3], controls[0] );
	    CNOT(controls[1], controls[4] );
	    CNOT(anc[0], controls[4] );
	    ApplyAnd(controls[0], controls[4], anc[1]);
	    CNOT(controls[1], controls[4] );
	    CNOT(anc[0], controls[4] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[3], controls[0] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[1], anc[0] );
	    CNOT(anc[1], anc[0] );
	    X(controls[0]);
	    ApplyAnd(controls[0], anc[0], anc[2]);
	    X(controls[0]);
	    CNOT(controls[1], anc[0] );
	    CNOT(anc[1], anc[0] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[2], anc[0] );
	    CNOT(anc[0], target );
	    CNOT(controls[1], target );
	    CNOT(anc[2], anc[0] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[1], anc[0] );
	    CNOT(anc[1], anc[0] );
	    X(controls[0]);
	    Adjoint ApplyAnd(controls[0], anc[0], anc[2]);
	    X(controls[0]);
	    CNOT(controls[1], anc[0] );
	    CNOT(anc[1], anc[0] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[3], controls[0] );
	    CNOT(controls[1], controls[4] );
	    CNOT(anc[0], controls[4] );
	    Adjoint ApplyAnd(controls[0], controls[4], anc[1]);
	    CNOT(controls[1], controls[4] );
	    CNOT(anc[0], controls[4] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[3], controls[0] );
	    CNOT(controls[1], controls[0] );
	    Adjoint ApplyAnd(controls[1], controls[0], anc[0]);
	    CNOT(controls[1], controls[0] );
	
	  }
	}
}