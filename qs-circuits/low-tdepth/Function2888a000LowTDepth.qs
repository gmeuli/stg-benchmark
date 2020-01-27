namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function2888a000LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[4]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[1]]);
            ApplyLowDepthAnd(controls[2], controls[3], anc[1]);
            ApplyLowDepthAnd(controls[4], anc[0], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[1], anc[2], controls[4]]);
            ApplyLowDepthAnd(controls[0], anc[0], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[1], anc[2], controls[4]]);
            CNOT(anc[3], target);
            ApplyToEachA(CNOT(_, anc[0]), [anc[1], anc[2], controls[4]]);
            Adjoint ApplyLowDepthAnd(controls[0], anc[0], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[1], anc[2], controls[4]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[1]]);
            Adjoint ApplyLowDepthAnd(controls[4], anc[0], anc[2]);
            Adjoint ApplyLowDepthAnd(controls[2], controls[3], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[1]]);
        }
    }
    
}