namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functioneca08880LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[4] )
	  {
	    CNOT(controls[2], controls[0] );
	    X(controls[0]);
	    ApplyAnd(controls[2], controls[0], anc[0]);
	    X(controls[0]);
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[3], controls[0] );
	    X(controls[0]);
	    ApplyAnd(controls[1], controls[0], anc[1]);
	    X(controls[0]);
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[3], controls[0] );
	    CNOT(controls[2], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(controls[2], controls[4] );
	    ApplyAnd(controls[1], controls[4], anc[2]);
	    CNOT(controls[2], controls[4] );
	    CNOT(controls[2], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(controls[0], anc[1] );
	    CNOT(controls[2], anc[1] );
	    CNOT(controls[0], anc[2] );
	    CNOT(controls[2], anc[2] );
	    X(anc[1]);
	    X(anc[2]);
	    ApplyAnd(anc[1], anc[2], anc[3]);
	    X(anc[1]);
	    X(anc[2]);
	    CNOT(controls[0], anc[2] );
	    CNOT(controls[2], anc[2] );
	    CNOT(controls[0], anc[1] );
	    CNOT(controls[2], anc[1] );
	    CNOT(anc[0], controls[2] );
	    CNOT(anc[1], controls[2] );
	    CNOT(anc[3], controls[2] );
	    CNOT(controls[2], target );
	    CNOT(controls[0], target );
	    CNOT(anc[0], controls[2] );
	    CNOT(anc[1], controls[2] );
	    CNOT(anc[3], controls[2] );
	    CNOT(controls[0], anc[1] );
	    CNOT(controls[2], anc[1] );
	    CNOT(controls[0], anc[2] );
	    CNOT(controls[2], anc[2] );
	    X(anc[1]);
	    X(anc[2]);
	    Adjoint ApplyAnd(anc[1], anc[2], anc[3]);
	    X(anc[1]);
	    X(anc[2]);
	    CNOT(controls[0], anc[2] );
	    CNOT(controls[2], anc[2] );
	    CNOT(controls[0], anc[1] );
	    CNOT(controls[2], anc[1] );
	    CNOT(controls[2], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(controls[2], controls[4] );
	    Adjoint ApplyAnd(controls[1], controls[4], anc[2]);
	    CNOT(controls[2], controls[4] );
	    CNOT(controls[2], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[3], controls[0] );
	    X(controls[0]);
	    Adjoint ApplyAnd(controls[1], controls[0], anc[1]);
	    X(controls[0]);
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[3], controls[0] );
	    CNOT(controls[2], controls[0] );
	    X(controls[0]);
	    Adjoint ApplyAnd(controls[2], controls[0], anc[0]);
	    X(controls[0]);
	    CNOT(controls[2], controls[0] );
	    X(target);
	
	  }
	}
}