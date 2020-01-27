namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functiona880a880LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[1] )
	  {
	    CNOT(controls[1], controls[3] );
	    CNOT(controls[1], controls[2] );
	    ApplyAnd(controls[3], controls[2], anc[0]);
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[1], controls[3] );
	    CNOT(anc[0], controls[1] );
	    ApplyAnd(controls[0], controls[1], target);
	    CNOT(anc[0], controls[1] );
	    CNOT(controls[1], controls[3] );
	    CNOT(controls[1], controls[2] );
	    Adjoint ApplyAnd(controls[3], controls[2], anc[0]);
	    CNOT(controls[1], controls[2] );
	    CNOT(controls[1], controls[3] );
	
	  }
	}
}