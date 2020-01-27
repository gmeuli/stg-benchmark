namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functionaa808080LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[5]) {
            ApplyLowDepthAnd(controls[1], controls[2], anc[0]);
            ApplyLowDepthAnd(controls[3], controls[4], anc[1]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[0]]);
            ApplyLowDepthAnd(anc[0], anc[2], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[3], anc[1]]);
            ApplyLowDepthAnd(controls[0], anc[2], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[3], anc[1]]);
            CNOT(anc[4], target);
            ApplyToEachA(CNOT(_, anc[2]), [anc[3], anc[1]]);
            Adjoint ApplyLowDepthAnd(controls[0], anc[2], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[3], anc[1]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[0]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[2], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[0]]);
            Adjoint ApplyLowDepthAnd(controls[3], controls[4], anc[1]);
            Adjoint ApplyLowDepthAnd(controls[1], controls[2], anc[0]);
        }
    }
    
}