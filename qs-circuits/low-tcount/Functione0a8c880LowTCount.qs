namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functione0a8c880LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[4] )
	  {
	    CNOT(controls[1], controls[4] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    X(controls[0]);
	    ApplyAnd(controls[4], controls[0], anc[0]);
	    X(controls[0]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[1], controls[4] );
	    CNOT(anc[0], controls[1] );
	    ApplyAnd(controls[0], controls[1], anc[1]);
	    CNOT(anc[0], controls[1] );
	    ApplyAnd(controls[1], controls[3], anc[2]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    X(controls[0]);
	    ApplyAnd(controls[0], anc[2], anc[3]);
	    X(controls[0]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[3], target );
	    CNOT(anc[1], target );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    X(controls[0]);
	    Adjoint ApplyAnd(controls[0], anc[2], anc[3]);
	    X(controls[0]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    Adjoint ApplyAnd(controls[1], controls[3], anc[2]);
	    CNOT(anc[0], controls[1] );
	    Adjoint ApplyAnd(controls[0], controls[1], anc[1]);
	    CNOT(anc[0], controls[1] );
	    CNOT(controls[1], controls[4] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    X(controls[0]);
	    Adjoint ApplyAnd(controls[4], controls[0], anc[0]);
	    X(controls[0]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[1], controls[4] );
	
	  }
	}
}