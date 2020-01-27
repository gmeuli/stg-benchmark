namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functionb884a880LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[3] )
	  {
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[2], controls[3] );
	    ApplyAnd(controls[1], controls[3], anc[0]);
	    CNOT(controls[2], controls[3] );
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[1], controls[4] );
	    CNOT(controls[2], controls[4] );
	    CNOT(controls[1], anc[0] );
	    CNOT(controls[2], anc[0] );
	    X(controls[4]);
	    ApplyAnd(controls[4], anc[0], anc[1]);
	    X(controls[4]);
	    CNOT(controls[1], anc[0] );
	    CNOT(controls[2], anc[0] );
	    CNOT(controls[1], controls[4] );
	    CNOT(controls[2], controls[4] );
	    CNOT(anc[0], controls[2] );
	    CNOT(anc[1], controls[2] );
	    X(controls[0]);
	    ApplyAnd(controls[0], controls[2], anc[2]);
	    X(controls[0]);
	    CNOT(anc[0], controls[2] );
	    CNOT(anc[1], controls[2] );
	    CNOT(controls[1], controls[2] );
	    CNOT(anc[0], controls[2] );
	    CNOT(anc[2], controls[2] );
	    CNOT(controls[2], target );
	    CNOT(controls[1], target );
	    CNOT(controls[1], controls[2] );
	    CNOT(anc[0], controls[2] );
	    CNOT(anc[2], controls[2] );
	    CNOT(anc[0], controls[2] );
	    CNOT(anc[1], controls[2] );
	    X(controls[0]);
	    Adjoint ApplyAnd(controls[0], controls[2], anc[2]);
	    X(controls[0]);
	    CNOT(anc[0], controls[2] );
	    CNOT(anc[1], controls[2] );
	    CNOT(controls[1], controls[4] );
	    CNOT(controls[2], controls[4] );
	    CNOT(controls[1], anc[0] );
	    CNOT(controls[2], anc[0] );
	    X(controls[4]);
	    Adjoint ApplyAnd(controls[4], anc[0], anc[1]);
	    X(controls[4]);
	    CNOT(controls[1], anc[0] );
	    CNOT(controls[2], anc[0] );
	    CNOT(controls[1], controls[4] );
	    CNOT(controls[2], controls[4] );
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[2], controls[3] );
	    Adjoint ApplyAnd(controls[1], controls[3], anc[0]);
	    CNOT(controls[2], controls[3] );
	    CNOT(controls[2], controls[1] );
	
	  }
	}
}