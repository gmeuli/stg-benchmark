namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functione9a0c088LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[6]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[0], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[0], controls[3], controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[3]), [controls[4], controls[3]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            X(anc[2]);
            ApplyLowDepthAnd(anc[2], anc[3], anc[5]);
            X(anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [controls[4], controls[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[0], controls[3], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[0], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[3]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[5], controls[3], controls[2], controls[1]]);
            X(anc[0]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[5], controls[3], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[3], controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[1]]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            X(anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[3], controls[2], controls[1]]);
            CNOT(anc[5], anc[3]);
            CNOT(anc[2], anc[3]);
            CNOT(controls[0], anc[3]);
            CNOT(anc[3], target);
            CNOT(controls[0], anc[3]);
            CNOT(anc[2], anc[3]);
            CNOT(anc[5], anc[3]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[3], controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[1]]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            X(anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[3], controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[3]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[5], controls[3], controls[2], controls[1]]);
            X(anc[0]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[5], controls[3], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[0], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[0], controls[3], controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[3]), [controls[4], controls[3]]);
            X(anc[2]);
            Adjoint ApplyLowDepthAnd(anc[2], anc[3], anc[5]);
            X(anc[2]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [controls[4], controls[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[0], controls[3], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[0], controls[2]]);
        }
    }
    
}