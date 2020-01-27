namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functione8808080LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[4] )
	  {
	    ApplyAnd(controls[3], controls[4], anc[0]);
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[1], controls[0] );
	    X(controls[2]);
	    X(controls[0]);
	    ApplyAnd(controls[2], controls[0], anc[1]);
	    X(controls[2]);
	    X(controls[0]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[1], controls[0] );
	    X(controls[0]);
	    ApplyAnd(anc[0], controls[0], anc[2]);
	    X(controls[0]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[1], controls[0] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[2], anc[1] );
	    X(controls[0]);
	    ApplyAnd(controls[0], anc[1], anc[3]);
	    X(controls[0]);
	    CNOT(anc[2], anc[1] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[3], target );
	    CNOT(anc[1], target );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[2], anc[1] );
	    X(controls[0]);
	    Adjoint ApplyAnd(controls[0], anc[1], anc[3]);
	    X(controls[0]);
	    CNOT(anc[2], anc[1] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[1], controls[0] );
	    X(controls[0]);
	    Adjoint ApplyAnd(anc[0], controls[0], anc[2]);
	    X(controls[0]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[1], controls[0] );
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[1], controls[0] );
	    X(controls[2]);
	    X(controls[0]);
	    Adjoint ApplyAnd(controls[2], controls[0], anc[1]);
	    X(controls[2]);
	    X(controls[0]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[1], controls[2] );
	    Adjoint ApplyAnd(controls[3], controls[4], anc[0]);
	
	  }
	}
}