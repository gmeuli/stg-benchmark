namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functiona8808880LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[5]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            X(controls[1]);
            X(controls[4]);
            ApplyLowDepthAnd(controls[1], controls[4], anc[3]);
            X(controls[4]);
            X(controls[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[0]]);
            X(anc[0]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[4], anc[3]]);
            ApplyLowDepthAnd(controls[0], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[4], anc[3]]);
            CNOT(controls[0], anc[1]);
            CNOT(anc[1], target);
            CNOT(controls[0], anc[1]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[4], anc[3]]);
            Adjoint ApplyLowDepthAnd(controls[0], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[4], anc[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[0]]);
            X(anc[0]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1]]);
            X(controls[1]);
            X(controls[4]);
            Adjoint ApplyLowDepthAnd(controls[1], controls[4], anc[3]);
            X(controls[4]);
            X(controls[1]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[1]]);
        }
    }
    
}