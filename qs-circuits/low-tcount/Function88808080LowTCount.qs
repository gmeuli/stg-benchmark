namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function88808080LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[3] )
	  {
	    ApplyAnd(controls[0], controls[1], anc[0]);
	    ApplyAnd(controls[3], controls[4], anc[1]);
	    CNOT(controls[2], controls[1] );
	    CNOT(anc[1], anc[0] );
	    X(controls[1]);
	    ApplyAnd(controls[1], anc[0], anc[2]);
	    X(controls[1]);
	    CNOT(anc[1], anc[0] );
	    CNOT(controls[2], controls[1] );
	    CNOT(anc[2], anc[1] );
	    ApplyAnd(anc[0], anc[1], target);
	    CNOT(anc[2], anc[1] );
	    CNOT(controls[2], controls[1] );
	    CNOT(anc[1], anc[0] );
	    X(controls[1]);
	    Adjoint ApplyAnd(controls[1], anc[0], anc[2]);
	    X(controls[1]);
	    CNOT(anc[1], anc[0] );
	    CNOT(controls[2], controls[1] );
	    Adjoint ApplyAnd(controls[3], controls[4], anc[1]);
	    Adjoint ApplyAnd(controls[0], controls[1], anc[0]);
	
	  }
	}
}