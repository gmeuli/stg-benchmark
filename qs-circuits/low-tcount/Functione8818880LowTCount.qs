namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functione8818880LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[4] )
	  {
	    CNOT(controls[2], controls[3] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    X(controls[3]);
	    X(controls[0]);
	    ApplyAnd(controls[3], controls[0], anc[0]);
	    X(controls[3]);
	    X(controls[0]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[2], controls[3] );
	    ApplyAnd(controls[0], controls[1], anc[1]);
	    X(controls[4]);
	    ApplyAnd(controls[4], anc[0], anc[2]);
	    X(controls[4]);
	    CNOT(anc[1], anc[0] );
	    ApplyAnd(anc[0], anc[2], anc[3]);
	    CNOT(anc[1], anc[0] );
	    CNOT(anc[3], anc[0] );
	    CNOT(anc[0], target );
	    CNOT(anc[1], target );
	    CNOT(anc[3], anc[0] );
	    CNOT(anc[1], anc[0] );
	    Adjoint ApplyAnd(anc[0], anc[2], anc[3]);
	    CNOT(anc[1], anc[0] );
	    X(controls[4]);
	    Adjoint ApplyAnd(controls[4], anc[0], anc[2]);
	    X(controls[4]);
	    Adjoint ApplyAnd(controls[0], controls[1], anc[1]);
	    CNOT(controls[2], controls[3] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    X(controls[3]);
	    X(controls[0]);
	    Adjoint ApplyAnd(controls[3], controls[0], anc[0]);
	    X(controls[3]);
	    X(controls[0]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[2], controls[3] );
	
	  }
	}
}