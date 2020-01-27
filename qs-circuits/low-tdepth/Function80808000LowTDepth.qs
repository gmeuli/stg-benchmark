namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function80808000LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[4]) {
            ApplyLowDepthAnd(controls[1], controls[2], anc[0]);
            X(controls[3]);
            X(controls[4]);
            ApplyLowDepthAnd(controls[3], controls[4], anc[1]);
            X(controls[4]);
            X(controls[3]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], anc[0]]);
            ApplyLowDepthAnd(controls[0], anc[2], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], anc[0]]);
            ApplyLowDepthAnd(anc[0], anc[3], anc[2]);
            CNOT(anc[2], target);
            Adjoint ApplyLowDepthAnd(anc[0], anc[3], anc[2]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], anc[0]]);
            Adjoint ApplyLowDepthAnd(controls[0], anc[2], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], anc[0]]);
            X(controls[3]);
            X(controls[4]);
            Adjoint ApplyLowDepthAnd(controls[3], controls[4], anc[1]);
            X(controls[4]);
            X(controls[3]);
            Adjoint ApplyLowDepthAnd(controls[1], controls[2], anc[0]);
        }
    }
    
}