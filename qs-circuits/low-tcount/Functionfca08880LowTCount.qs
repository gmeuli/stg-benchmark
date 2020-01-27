namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functionfca08880LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[4] )
	  {
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[3], controls[2] );
	    CNOT(controls[1], controls[4] );
	    CNOT(controls[3], controls[4] );
	    X(controls[4]);
	    ApplyAnd(controls[2], controls[4], anc[0]);
	    X(controls[4]);
	    CNOT(controls[1], controls[4] );
	    CNOT(controls[3], controls[4] );
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[3], controls[2] );
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[4], controls[1] );
	    X(controls[1]);
	    ApplyAnd(controls[1], controls[4], anc[1]);
	    X(controls[1]);
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[4], controls[1] );
	    CNOT(controls[3], controls[2] );
	    CNOT(anc[0], controls[2] );
	    ApplyAnd(controls[0], controls[2], anc[2]);
	    CNOT(controls[3], controls[2] );
	    CNOT(anc[0], controls[2] );
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[3], controls[1] );
	    CNOT(anc[0], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(anc[0], controls[4] );
	    CNOT(anc[2], controls[4] );
	    ApplyAnd(controls[1], controls[4], anc[3]);
	    CNOT(anc[0], controls[4] );
	    CNOT(anc[2], controls[4] );
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[3], controls[1] );
	    CNOT(anc[0], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(anc[3], target );
	    CNOT(anc[2], target );
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[3], controls[1] );
	    CNOT(anc[0], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(anc[0], controls[4] );
	    CNOT(anc[2], controls[4] );
	    Adjoint ApplyAnd(controls[1], controls[4], anc[3]);
	    CNOT(anc[0], controls[4] );
	    CNOT(anc[2], controls[4] );
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[3], controls[1] );
	    CNOT(anc[0], controls[1] );
	    CNOT(anc[1], controls[1] );
	    CNOT(controls[3], controls[2] );
	    CNOT(anc[0], controls[2] );
	    Adjoint ApplyAnd(controls[0], controls[2], anc[2]);
	    CNOT(controls[3], controls[2] );
	    CNOT(anc[0], controls[2] );
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[4], controls[1] );
	    X(controls[1]);
	    Adjoint ApplyAnd(controls[1], controls[4], anc[1]);
	    X(controls[1]);
	    CNOT(controls[2], controls[1] );
	    CNOT(controls[4], controls[1] );
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[3], controls[2] );
	    CNOT(controls[1], controls[4] );
	    CNOT(controls[3], controls[4] );
	    X(controls[4]);
	    Adjoint ApplyAnd(controls[2], controls[4], anc[0]);
	    X(controls[4]);
	    CNOT(controls[1], controls[4] );
	    CNOT(controls[3], controls[4] );
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[3], controls[2] );
	
	  }
	}
	
	
	
}