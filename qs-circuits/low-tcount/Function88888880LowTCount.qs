namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function88888880LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[4] )
	  {
	    X(controls[3]);
	    X(controls[4]);
	    ApplyAnd(controls[3], controls[4], anc[0]);
	    X(controls[3]);
	    X(controls[4]);
	    ApplyAnd(controls[0], controls[1], anc[1]);
	    X(controls[2]);
	    ApplyAnd(controls[2], anc[1], anc[2]);
	    X(controls[2]);
	    ApplyAnd(anc[0], anc[2], anc[3]);
	    CNOT(anc[3], target );
	    CNOT(anc[1], target );
	    Adjoint ApplyAnd(anc[0], anc[2], anc[3]);
	    X(controls[2]);
	    Adjoint ApplyAnd(controls[2], anc[1], anc[2]);
	    X(controls[2]);
	    Adjoint ApplyAnd(controls[0], controls[1], anc[1]);
	    X(controls[3]);
	    X(controls[4]);
	    Adjoint ApplyAnd(controls[3], controls[4], anc[0]);
	    X(controls[3]);
	    X(controls[4]);
	
	  }
	}
}