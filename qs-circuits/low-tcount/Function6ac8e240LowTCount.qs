namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function6ac8e240LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[4] )
	  {
	    CNOT(controls[4], controls[2] );
	    ApplyAnd(controls[1], controls[2], anc[0]);
	    CNOT(controls[4], controls[2] );
	    CNOT(controls[1], controls[0] );
	    ApplyAnd(controls[2], controls[0], anc[1]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[3] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[1], controls[0] );
	    ApplyAnd(controls[3], controls[0], anc[2]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[1], controls[0] );
	    CNOT(controls[2], controls[3] );
	    CNOT(anc[2], anc[0] );
	    ApplyAnd(controls[0], anc[0], anc[3]);
	    CNOT(anc[2], anc[0] );
	    CNOT(anc[3], target );
	    CNOT(anc[1], target );
	    CNOT(anc[2], anc[0] );
	    Adjoint ApplyAnd(controls[0], anc[0], anc[3]);
	    CNOT(anc[2], anc[0] );
	    CNOT(controls[2], controls[3] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[1], controls[0] );
	    Adjoint ApplyAnd(controls[3], controls[0], anc[2]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[1], controls[0] );
	    CNOT(controls[2], controls[3] );
	    CNOT(controls[1], controls[0] );
	    Adjoint ApplyAnd(controls[2], controls[0], anc[1]);
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[4], controls[2] );
	    Adjoint ApplyAnd(controls[1], controls[2], anc[0]);
	    CNOT(controls[4], controls[2] );
	
	  }
	}
}