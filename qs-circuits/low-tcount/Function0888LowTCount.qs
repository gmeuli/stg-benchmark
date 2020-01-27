namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function0888LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[2] )
	  {
	    CNOT(controls[3], controls[0] );
	    ApplyAnd(controls[3], controls[0], anc[0]);
	    CNOT(controls[3], controls[0] );
	    CNOT(controls[3], controls[2] );
	    CNOT(controls[3], anc[0] );
	    ApplyAnd(controls[2], anc[0], anc[1]);
	    CNOT(controls[3], anc[0] );
	    CNOT(controls[3], controls[2] );
	    CNOT(controls[3], controls[0] );
	    CNOT(anc[0], controls[0] );
	    CNOT(anc[1], controls[0] );
	    ApplyAnd(controls[1], controls[0], target);
	    CNOT(controls[3], controls[0] );
	    CNOT(anc[0], controls[0] );
	    CNOT(anc[1], controls[0] );
	    CNOT(controls[3], controls[2] );
	    CNOT(controls[3], anc[0] );
	    Adjoint ApplyAnd(controls[2], anc[0], anc[1]);
	    CNOT(controls[3], anc[0] );
	    CNOT(controls[3], controls[2] );
	    CNOT(controls[3], controls[0] );
	    Adjoint ApplyAnd(controls[3], controls[0], anc[0]);
	    CNOT(controls[3], controls[0] );
	
	  }
	}
	
}