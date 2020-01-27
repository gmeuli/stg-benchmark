namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functione8a08880LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[6]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[0], controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[3], controls[0], controls[1]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[0]]);
            X(anc[0]);
            ApplyLowDepthAnd(controls[2], anc[0], anc[3]);
            X(anc[0]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[1], anc[2], anc[4]);
            X(anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[3], controls[0], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[0], controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[2], controls[0]]);
            X(controls[1]);
            ApplyLowDepthAnd(controls[1], anc[0], anc[1]);
            X(controls[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[2], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[4], controls[2]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], anc[3]]);
            ApplyLowDepthAnd(anc[0], anc[2], anc[5]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], anc[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[4], controls[2]]);
            CNOT(anc[4], anc[5]);
            CNOT(anc[1], anc[5]);
            CNOT(controls[0], anc[5]);
            CNOT(anc[5], target);
            CNOT(controls[0], anc[5]);
            CNOT(anc[1], anc[5]);
            CNOT(anc[4], anc[5]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[4], controls[2]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], anc[3]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[2], anc[5]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], anc[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[4], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[2], controls[0]]);
            X(controls[1]);
            Adjoint ApplyLowDepthAnd(controls[1], anc[0], anc[1]);
            X(controls[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[2], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[0], controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[3], controls[0], controls[1]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[0]]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[1], anc[2], anc[4]);
            X(anc[1]);
            X(anc[0]);
            Adjoint ApplyLowDepthAnd(controls[2], anc[0], anc[3]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[3], controls[0], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[0], controls[2], controls[1]]);
        }
    }
    
}