namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function80008000LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[2] )
	  {
	    CNOT(controls[3], controls[0] );
	    ApplyAnd(controls[1], controls[0], anc[0]);
	    CNOT(controls[3], controls[0] );
	    CNOT(anc[0], controls[2] );
	    ApplyAnd(controls[3], controls[2], anc[1]);
	    CNOT(anc[0], controls[2] );
	    CNOT(anc[0], controls[1] );
	    CNOT(controls[3], controls[0] );
	    CNOT(anc[1], controls[0] );
	    ApplyAnd(controls[1], controls[0], target);
	    CNOT(controls[3], controls[0] );
	    CNOT(anc[1], controls[0] );
	    CNOT(anc[0], controls[1] );
	    CNOT(anc[0], controls[2] );
	    Adjoint ApplyAnd(controls[3], controls[2], anc[1]);
	    CNOT(anc[0], controls[2] );
	    CNOT(controls[3], controls[0] );
	    Adjoint ApplyAnd(controls[1], controls[0], anc[0]);
	    CNOT(controls[3], controls[0] );
	
	  }
	}
}