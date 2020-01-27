namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function7880LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[5]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[0], controls[2]]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            X(anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[0], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[1]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[3]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[2]]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            X(anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[3]]);
            CNOT(anc[2], anc[4]);
            CNOT(controls[3], anc[4]);
            CNOT(anc[4], target);
            CNOT(controls[3], anc[4]);
            CNOT(anc[2], anc[4]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[3]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[2]]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            X(anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[1]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[0], controls[2]]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            X(anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[0], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1]]);
        }
    }
    
}