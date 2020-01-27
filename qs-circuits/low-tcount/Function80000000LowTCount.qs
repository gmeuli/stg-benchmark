namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function80000000LowTCount(controls : Qubit[], target : Qubit): Unit 
	{
		using ( anc =  Qubit[3] )
	  {
	    ApplyAnd(controls[0], controls[1], anc[0]);
	    ApplyAnd(controls[2], controls[3], anc[1]);
	    ApplyAnd(controls[4], anc[0], anc[2]);
	    ApplyAnd(anc[1], anc[2], target);
	    Adjoint ApplyAnd(controls[4], anc[0], anc[2]);
	    Adjoint ApplyAnd(controls[2], controls[3], anc[1]);
	    Adjoint ApplyAnd(controls[0], controls[1], anc[0]);
	
	  }
	}
}