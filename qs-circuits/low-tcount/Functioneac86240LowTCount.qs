namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functioneac86240LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[3] )
	  {
	    ApplyAnd(controls[1], controls[2], anc[0]);
	    CNOT(controls[3], controls[2] );
	    CNOT(controls[4], controls[2] );
	    ApplyAnd(controls[1], controls[2], anc[1]);
	    CNOT(controls[3], controls[2] );
	    CNOT(controls[4], controls[2] );
	    CNOT(anc[1], controls[3] );
	    ApplyAnd(controls[0], controls[3], anc[2]);
	    CNOT(anc[1], controls[3] );
	    CNOT(anc[2], target );
	    CNOT(anc[0], target );
	    CNOT(anc[1], controls[3] );
	    Adjoint ApplyAnd(controls[0], controls[3], anc[2]);
	    CNOT(anc[1], controls[3] );
	    CNOT(controls[3], controls[2] );
	    CNOT(controls[4], controls[2] );
	    Adjoint ApplyAnd(controls[1], controls[2], anc[1]);
	    CNOT(controls[3], controls[2] );
	    CNOT(controls[4], controls[2] );
	    Adjoint ApplyAnd(controls[1], controls[2], anc[0]);
	
	  }
	}
}