namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functionf8808880LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[4] )
	  {
	    ApplyAnd(controls[0], controls[1], anc[0]);
	    CNOT(controls[2], controls[4] );
	    X(controls[4]);
	    ApplyAnd(controls[2], controls[4], anc[1]);
	    X(controls[4]);
	    CNOT(controls[2], controls[4] );
	    CNOT(controls[2], controls[3] );
	    CNOT(anc[0], controls[3] );
	    CNOT(controls[2], anc[1] );
	    ApplyAnd(controls[3], anc[1], anc[2]);
	    CNOT(controls[2], anc[1] );
	    CNOT(controls[2], controls[3] );
	    CNOT(anc[0], controls[3] );
	    CNOT(controls[3], controls[2] );
	    CNOT(anc[1], anc[0] );
	    CNOT(anc[2], anc[0] );
	    ApplyAnd(controls[2], anc[0], anc[3]);
	    CNOT(anc[1], anc[0] );
	    CNOT(anc[2], anc[0] );
	    CNOT(controls[3], controls[2] );
	    CNOT(anc[3], anc[1] );
	    CNOT(anc[1], target );
	    CNOT(anc[2], target );
	    CNOT(anc[3], anc[1] );
	    CNOT(controls[3], controls[2] );
	    CNOT(anc[1], anc[0] );
	    CNOT(anc[2], anc[0] );
	    Adjoint ApplyAnd(controls[2], anc[0], anc[3]);
	    CNOT(anc[1], anc[0] );
	    CNOT(anc[2], anc[0] );
	    CNOT(controls[3], controls[2] );
	    CNOT(controls[2], controls[3] );
	    CNOT(anc[0], controls[3] );
	    CNOT(controls[2], anc[1] );
	    Adjoint ApplyAnd(controls[3], anc[1], anc[2]);
	    CNOT(controls[2], anc[1] );
	    CNOT(controls[2], controls[3] );
	    CNOT(anc[0], controls[3] );
	    CNOT(controls[2], controls[4] );
	    X(controls[4]);
	    Adjoint ApplyAnd(controls[2], controls[4], anc[1]);
	    X(controls[4]);
	    CNOT(controls[2], controls[4] );
	    Adjoint ApplyAnd(controls[0], controls[1], anc[0]);
	
	  }
	}
}