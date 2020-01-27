namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functione881e880LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[6]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[1], controls[0]]);
            X(anc[0]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            X(anc[1]);
            X(anc[0]);
            X(controls[0]);
            X(anc[2]);
            ApplyLowDepthAnd(controls[0], anc[2], anc[4]);
            X(anc[2]);
            X(controls[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[4], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[4], controls[2], controls[1], controls[0]]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            X(anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[4], controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[4], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], anc[3]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[5]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], anc[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[0]]);
            CNOT(anc[4], anc[5]);
            CNOT(anc[2], anc[5]);
            CNOT(controls[1], anc[5]);
            CNOT(controls[0], anc[5]);
            CNOT(anc[5], target);
            X(target);
            CNOT(controls[0], anc[5]);
            CNOT(controls[1], anc[5]);
            CNOT(anc[2], anc[5]);
            CNOT(anc[4], anc[5]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], anc[3]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[5]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], anc[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[4], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[4], controls[2], controls[1], controls[0]]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            X(anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[4], controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[4], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[1], controls[0]]);
            X(controls[0]);
            X(anc[2]);
            Adjoint ApplyLowDepthAnd(controls[0], anc[2], anc[4]);
            X(anc[2]);
            X(controls[0]);
            X(anc[0]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            X(anc[1]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
        }
    }
    
}