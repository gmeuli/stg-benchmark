namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functiona8808000LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[6]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[3]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[3], controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[3]), [controls[2]]);
            X(anc[0]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            X(anc[1]);
            X(anc[0]);
            X(anc[2]);
            ApplyLowDepthAnd(anc[2], anc[3], anc[5]);
            X(anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[3], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[5], controls[2], controls[1]]);
            X(anc[0]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            X(anc[1]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[5], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], anc[4], anc[5]]);
            X(controls[0]);
            ApplyLowDepthAnd(controls[0], anc[0], anc[1]);
            X(controls[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], anc[4], anc[5]]);
            CNOT(anc[4], anc[1]);
            CNOT(anc[5], anc[1]);
            CNOT(anc[2], anc[1]);
            CNOT(anc[1], target);
            CNOT(anc[2], anc[1]);
            CNOT(anc[5], anc[1]);
            CNOT(anc[4], anc[1]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], anc[4], anc[5]]);
            X(controls[0]);
            Adjoint ApplyLowDepthAnd(controls[0], anc[0], anc[1]);
            X(controls[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], anc[4], anc[5]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[5], controls[2], controls[1]]);
            X(anc[0]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            X(anc[1]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[5], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[4], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[3]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[3], controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[3]), [controls[2]]);
            X(anc[2]);
            Adjoint ApplyLowDepthAnd(anc[2], anc[3], anc[5]);
            X(anc[2]);
            X(anc[0]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            X(anc[1]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[3], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[3]]);
        }
    }
    
}