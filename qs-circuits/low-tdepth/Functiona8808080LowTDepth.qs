namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functiona8808080LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[4]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[3]]);
            ApplyLowDepthAnd(controls[3], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[1], controls[3]]);
            ApplyLowDepthAnd(anc[0], anc[2], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[1], controls[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[1], controls[3]]);
            ApplyLowDepthAnd(controls[0], anc[0], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[1], controls[3]]);
            CNOT(anc[2], target);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[1], controls[3]]);
            Adjoint ApplyLowDepthAnd(controls[0], anc[0], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[1], controls[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[1], controls[3]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[2], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[1], controls[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[3]]);
            Adjoint ApplyLowDepthAnd(controls[3], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[3]]);
        }
    }
    
}