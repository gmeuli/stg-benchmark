namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functione9808080LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[6]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[4], controls[0]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[3]), [controls[3], controls[1]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            ApplyLowDepthAnd(anc[2], anc[3], anc[5]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [controls[3], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[4], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[4]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[5], controls[3]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[5], controls[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[4]]);
            CNOT(anc[2], target);
            ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[4]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[5], controls[3]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[5], controls[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[4]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[4], controls[0]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[3]), [controls[3], controls[1]]);
            Adjoint ApplyLowDepthAnd(anc[2], anc[3], anc[5]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [controls[3], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[4], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
        }
    }
    
}