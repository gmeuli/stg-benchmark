namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function6ac8e000LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[4] )
	  {
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[1], controls[4] );
	    X(controls[4]);
	    ApplyAnd(controls[2], controls[4], anc[0]);
	    X(controls[4]);
	    CNOT(controls[1], controls[4] );
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[4], controls[3] );
	    X(controls[0]);
	    ApplyAnd(controls[0], controls[3], anc[1]);
	    X(controls[0]);
	    CNOT(controls[4], controls[3] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[1], controls[0] );
	    CNOT(anc[0], controls[0] );
	    CNOT(anc[1], controls[0] );
	    X(controls[3]);
	    X(controls[0]);
	    ApplyAnd(controls[3], controls[0], anc[2]);
	    X(controls[3]);
	    X(controls[0]);
	    CNOT(controls[1], controls[0] );
	    CNOT(anc[0], controls[0] );
	    CNOT(anc[1], controls[0] );
	    CNOT(controls[4], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(controls[4], controls[3] );
	    CNOT(anc[0], controls[3] );
	    X(controls[1]);
	    ApplyAnd(controls[1], controls[3], anc[3]);
	    X(controls[1]);
	    CNOT(controls[4], controls[3] );
	    CNOT(anc[0], controls[3] );
	    CNOT(controls[4], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(controls[3], controls[1] );
	    CNOT(anc[2], controls[1] );
	    CNOT(anc[3], controls[1] );
	    CNOT(controls[1], target );
	    CNOT(controls[0], target );
	    CNOT(controls[3], controls[1] );
	    CNOT(anc[2], controls[1] );
	    CNOT(anc[3], controls[1] );
	    CNOT(controls[4], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(controls[4], controls[3] );
	    CNOT(anc[0], controls[3] );
	    X(controls[1]);
	    Adjoint ApplyAnd(controls[1], controls[3], anc[3]);
	    X(controls[1]);
	    CNOT(controls[4], controls[3] );
	    CNOT(anc[0], controls[3] );
	    CNOT(controls[4], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(controls[1], controls[0] );
	    CNOT(anc[0], controls[0] );
	    CNOT(anc[1], controls[0] );
	    X(controls[3]);
	    X(controls[0]);
	    Adjoint ApplyAnd(controls[3], controls[0], anc[2]);
	    X(controls[3]);
	    X(controls[0]);
	    CNOT(controls[1], controls[0] );
	    CNOT(anc[0], controls[0] );
	    CNOT(anc[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[4], controls[3] );
	    X(controls[0]);
	    Adjoint ApplyAnd(controls[0], controls[3], anc[1]);
	    X(controls[0]);
	    CNOT(controls[4], controls[3] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[1], controls[4] );
	    X(controls[4]);
	    Adjoint ApplyAnd(controls[2], controls[4], anc[0]);
	    X(controls[4]);
	    CNOT(controls[1], controls[4] );
	    CNOT(controls[1], controls[2] );
	    X(target);
	
	  }
	}
}