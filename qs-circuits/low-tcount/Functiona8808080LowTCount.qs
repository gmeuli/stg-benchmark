namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functiona8808080LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[2] )
	  {
	    CNOT(controls[3], controls[4] );
	    ApplyAnd(controls[3], controls[4], anc[0]);
	    CNOT(controls[3], controls[4] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[1], controls[3] );
	    CNOT(anc[0], controls[3] );
	    ApplyAnd(controls[0], controls[3], anc[1]);
	    CNOT(controls[1], controls[3] );
	    CNOT(anc[0], controls[3] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(anc[0], controls[3] );
	    CNOT(anc[1], controls[3] );
	    ApplyAnd(controls[0], controls[3], target);
	    CNOT(anc[0], controls[3] );
	    CNOT(anc[1], controls[3] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[1], controls[3] );
	    CNOT(anc[0], controls[3] );
	    Adjoint ApplyAnd(controls[0], controls[3], anc[1]);
	    CNOT(controls[1], controls[3] );
	    CNOT(anc[0], controls[3] );
	    CNOT(controls[1], controls[0] );
	    CNOT(controls[2], controls[0] );
	    CNOT(controls[3], controls[4] );
	    Adjoint ApplyAnd(controls[3], controls[4], anc[0]);
	    CNOT(controls[3], controls[4] );
	
	  }
	}
}