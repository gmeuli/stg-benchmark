namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function7080LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[3]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[0]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[3]]);
            ApplyLowDepthAnd(controls[2], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[3]]);
            CNOT(anc[1], target);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[3]]);
            Adjoint ApplyLowDepthAnd(controls[2], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[0]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1]]);
        }
    }
    
}