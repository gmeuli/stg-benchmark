namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function6ac8e000LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[8]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[1], controls[4]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[0]]);
            ApplyToEachA(CNOT(_, anc[3]), [controls[3], controls[4]]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            X(anc[1]);
            X(anc[2]);
            ApplyLowDepthAnd(anc[2], anc[3], anc[5]);
            X(anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [controls[3], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[1], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[4], anc[5], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[5], controls[1], controls[4]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[4], controls[3], controls[4]]);
            X(anc[0]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[6]);
            X(anc[1]);
            X(anc[0]);
            X(anc[2]);
            ApplyLowDepthAnd(anc[2], anc[3], anc[7]);
            X(anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[4], controls[3], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[5], controls[1], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[4], anc[5], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3]]);
            CNOT(anc[7], anc[6]);
            CNOT(controls[1], anc[6]);
            CNOT(controls[3], anc[6]);
            CNOT(controls[0], anc[6]);
            CNOT(anc[6], target);
            X(target);
            CNOT(controls[0], anc[6]);
            CNOT(controls[3], anc[6]);
            CNOT(controls[1], anc[6]);
            CNOT(anc[7], anc[6]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[4], anc[5], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[5], controls[1], controls[4]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[4], controls[3], controls[4]]);
            X(anc[2]);
            Adjoint ApplyLowDepthAnd(anc[2], anc[3], anc[7]);
            X(anc[2]);
            X(anc[0]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[6]);
            X(anc[1]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[4], controls[3], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[5], controls[1], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[4], anc[5], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[1], controls[4]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[0]]);
            ApplyToEachA(CNOT(_, anc[3]), [controls[3], controls[4]]);
            X(anc[2]);
            Adjoint ApplyLowDepthAnd(anc[2], anc[3], anc[5]);
            X(anc[2]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            X(anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [controls[3], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[1], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[2]]);
        }
    }
    
}