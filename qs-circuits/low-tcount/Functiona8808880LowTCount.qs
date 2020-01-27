namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functiona8808880LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[4] )
	  {
	    CNOT(controls[1], controls[3] );
	    CNOT(controls[1], controls[2] );
	    ApplyAnd(controls[3], controls[2], anc[0]);
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[1], controls[3] );
	    X(controls[1]);
	    X(controls[4]);
	    ApplyAnd(controls[1], controls[4], anc[1]);
	    X(controls[1]);
	    X(controls[4]);
	    CNOT(anc[0], controls[1] );
	    CNOT(anc[1], controls[0] );
	    X(controls[1]);
	    ApplyAnd(controls[1], controls[0], anc[2]);
	    X(controls[1]);
	    CNOT(anc[1], controls[0] );
	    CNOT(anc[0], controls[1] );
	    CNOT(anc[2], anc[1] );
	    ApplyAnd(controls[0], anc[1], anc[3]);
	    CNOT(anc[2], anc[1] );
	    CNOT(anc[3], target );
	    CNOT(controls[0], target );
	    CNOT(anc[2], anc[1] );
	    Adjoint ApplyAnd(controls[0], anc[1], anc[3]);
	    CNOT(anc[2], anc[1] );
	    CNOT(anc[0], controls[1] );
	    CNOT(anc[1], controls[0] );
	    X(controls[1]);
	    Adjoint ApplyAnd(controls[1], controls[0], anc[2]);
	    X(controls[1]);
	    CNOT(anc[1], controls[0] );
	    CNOT(anc[0], controls[1] );
	    X(controls[1]);
	    X(controls[4]);
	    Adjoint ApplyAnd(controls[1], controls[4], anc[1]);
	    X(controls[1]);
	    X(controls[4]);
	    CNOT(controls[1], controls[3] );
	    CNOT(controls[1], controls[2] );
	    Adjoint ApplyAnd(controls[3], controls[2], anc[0]);
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[1], controls[3] );
	
	  }
	}
}