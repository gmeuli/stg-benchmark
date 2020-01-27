namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function80808000LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[3] )
	  {
	    ApplyAnd(controls[1], controls[2], anc[0]);
	    X(controls[3]);
	    X(controls[4]);
	    ApplyAnd(controls[3], controls[4], anc[1]);
	    X(controls[3]);
	    X(controls[4]);
	    CNOT(anc[1], anc[0] );
	    ApplyAnd(controls[0], anc[0], anc[2]);
	    CNOT(anc[1], anc[0] );
	    ApplyAnd(anc[0], anc[2], target);
	    CNOT(anc[1], anc[0] );
	    Adjoint ApplyAnd(controls[0], anc[0], anc[2]);
	    CNOT(anc[1], anc[0] );
	    X(controls[3]);
	    X(controls[4]);
	    Adjoint ApplyAnd(controls[3], controls[4], anc[1]);
	    X(controls[3]);
	    X(controls[4]);
	    Adjoint ApplyAnd(controls[1], controls[2], anc[0]);
	
	  }
	}
}