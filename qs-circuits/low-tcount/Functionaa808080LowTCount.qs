namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functionaa808080LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[3] )
	  {
	    ApplyAnd(controls[1], controls[2], anc[0]);
	    ApplyAnd(controls[3], controls[4], anc[1]);
	    CNOT(anc[1], controls[0] );
	    ApplyAnd(anc[0], controls[0], anc[2]);
	    CNOT(anc[1], controls[0] );
	    CNOT(anc[2], anc[1] );
	    ApplyAnd(controls[0], anc[1], target);
	    CNOT(anc[2], anc[1] );
	    CNOT(anc[1], controls[0] );
	    Adjoint ApplyAnd(anc[0], controls[0], anc[2]);
	    CNOT(anc[1], controls[0] );
	    Adjoint ApplyAnd(controls[3], controls[4], anc[1]);
	    Adjoint ApplyAnd(controls[1], controls[2], anc[0]);
	
	  }
	}
}