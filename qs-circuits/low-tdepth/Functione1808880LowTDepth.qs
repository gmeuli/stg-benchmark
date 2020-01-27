namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functione1808880LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[5]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[0]]);
            ApplyLowDepthAnd(controls[1], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0], controls[3]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[4], controls[1]]);
            ApplyLowDepthAnd(anc[0], anc[2], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[4], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0], controls[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[3], anc[1], controls[1]]);
            X(anc[0]);
            ApplyLowDepthAnd(anc[0], anc[2], anc[4]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[3], anc[1], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            CNOT(anc[1], anc[4]);
            CNOT(controls[1], anc[4]);
            CNOT(anc[4], target);
            CNOT(controls[1], anc[4]);
            CNOT(anc[1], anc[4]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[3], anc[1], controls[1]]);
            X(anc[0]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[2], anc[4]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[3], anc[1], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0], controls[3]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[4], controls[1]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[2], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[4], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0], controls[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[0]]);
            Adjoint ApplyLowDepthAnd(controls[1], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[0]]);
        }
    }
    
}