namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functionea808080LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[3] )
	  {
	    CNOT(controls[3], controls[4] );
	    ApplyAnd(controls[3], controls[4], anc[0]);
	    CNOT(controls[3], controls[4] );
	    ApplyAnd(controls[1], controls[2], anc[1]);
	    CNOT(controls[0], controls[3] );
	    CNOT(anc[0], controls[3] );
	    CNOT(controls[0], anc[1] );
	    ApplyAnd(controls[3], anc[1], anc[2]);
	    CNOT(controls[0], anc[1] );
	    CNOT(controls[0], controls[3] );
	    CNOT(anc[0], controls[3] );
	    CNOT(anc[2], target );
	    CNOT(controls[0], target );
	    CNOT(controls[0], controls[3] );
	    CNOT(anc[0], controls[3] );
	    CNOT(controls[0], anc[1] );
	    Adjoint ApplyAnd(controls[3], anc[1], anc[2]);
	    CNOT(controls[0], anc[1] );
	    CNOT(controls[0], controls[3] );
	    CNOT(anc[0], controls[3] );
	    Adjoint ApplyAnd(controls[1], controls[2], anc[1]);
	    CNOT(controls[3], controls[4] );
	    Adjoint ApplyAnd(controls[3], controls[4], anc[0]);
	    CNOT(controls[3], controls[4] );
	
	  }
	}
}