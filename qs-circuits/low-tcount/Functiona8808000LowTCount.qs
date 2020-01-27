namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functiona8808000LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[4] )
	  {
	    CNOT(controls[3], controls[4] );
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[3], controls[1] );
	    X(controls[4]);
	    X(controls[1]);
	    ApplyAnd(controls[4], controls[1], anc[0]);
	    X(controls[4]);
	    X(controls[1]);
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[3], controls[1] );
	    CNOT(controls[3], controls[4] );
	    CNOT(controls[2], controls[1] );
	    X(controls[1]);
	    ApplyAnd(controls[1], controls[2], anc[1]);
	    X(controls[1]);
	    CNOT(controls[2], controls[1] );
	    CNOT(anc[0], controls[0] );
	    CNOT(controls[2], controls[1] );
	    CNOT(anc[1], controls[1] );
	    X(controls[0]);
	    X(controls[1]);
	    ApplyAnd(controls[0], controls[1], anc[2]);
	    X(controls[0]);
	    X(controls[1]);
	    CNOT(controls[2], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(anc[0], controls[0] );
	    CNOT(anc[1], anc[0] );
	    CNOT(anc[2], anc[0] );
	    X(controls[0]);
	    ApplyAnd(controls[0], anc[0], anc[3]);
	    X(controls[0]);
	    CNOT(anc[1], anc[0] );
	    CNOT(anc[2], anc[0] );
	    CNOT(anc[1], anc[0] );
	    CNOT(anc[3], anc[0] );
	    CNOT(anc[0], target );
	    CNOT(anc[2], target );
	    CNOT(anc[1], anc[0] );
	    CNOT(anc[3], anc[0] );
	    CNOT(anc[1], anc[0] );
	    CNOT(anc[2], anc[0] );
	    X(controls[0]);
	    Adjoint ApplyAnd(controls[0], anc[0], anc[3]);
	    X(controls[0]);
	    CNOT(anc[1], anc[0] );
	    CNOT(anc[2], anc[0] );
	    CNOT(anc[0], controls[0] );
	    CNOT(controls[2], controls[1] );
	    CNOT(anc[1], controls[1] );
	    X(controls[0]);
	    X(controls[1]);
	    Adjoint ApplyAnd(controls[0], controls[1], anc[2]);
	    X(controls[0]);
	    X(controls[1]);
	    CNOT(controls[2], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(anc[0], controls[0] );
	    CNOT(controls[2], controls[1] );
	    X(controls[1]);
	    Adjoint ApplyAnd(controls[1], controls[2], anc[1]);
	    X(controls[1]);
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[3], controls[4] );
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[3], controls[1] );
	    X(controls[4]);
	    X(controls[1]);
	    Adjoint ApplyAnd(controls[4], controls[1], anc[0]);
	    X(controls[4]);
	    X(controls[1]);
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[3], controls[1] );
	    CNOT(controls[3], controls[4] );
	
	  }
	}
}