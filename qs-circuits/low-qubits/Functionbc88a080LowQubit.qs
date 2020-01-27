namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Functionbc88a080LowQubit(controls : Qubit[], target : Qubit): Unit 
	{
			    X(controls[0]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2] ], target);
	    X(controls[0]);
	    X(controls[0]);
	    X(controls[2]);
	    X(controls[3]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[3], controls[4] ], target);
	    X(controls[0]);
	    X(controls[2]);
	    X(controls[3]);
	    X(controls[0]);
	    X(controls[1]);
	    X(controls[4]);
	    Controlled XWrap ([ controls[0], controls[1], controls[2], controls[3], controls[4] ], target);
	    X(controls[0]);
	    X(controls[1]);
	    X(controls[4]);
	    X(controls[1]);
	    X(controls[3]);
	    Controlled XWrap ([ controls[1], controls[2], controls[3] ], target);
	    X(controls[1]);
	    X(controls[3]);
	    X(controls[1]);
	    X(controls[2]);
	    Controlled XWrap ([ controls[1], controls[2], controls[4] ], target);
	    X(controls[1]);
	    X(controls[2]);
	    X(controls[4]);
	    CCNOT(controls[2], controls[4], target);
	    X(controls[4]);
	    CNOT(controls[4], target );
	
		}
	
}