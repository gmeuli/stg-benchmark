namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function78888888LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[6]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyLowDepthAnd(controls[4], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[4]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[1], controls[0], controls[4]]);
            ApplyLowDepthAnd(anc[0], anc[2], anc[4]);
            ApplyLowDepthAnd(controls[1], anc[3], anc[5]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[1], controls[0], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            CNOT(anc[5], anc[4]);
            CNOT(anc[4], target);
            CNOT(anc[5], anc[4]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[4]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[1], controls[0], controls[4]]);
            Adjoint ApplyLowDepthAnd(controls[1], anc[3], anc[5]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[2], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[1], controls[0], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            Adjoint ApplyLowDepthAnd(controls[4], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
        }
    }
    
}