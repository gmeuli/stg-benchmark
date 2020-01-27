namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functionb884a880LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[4]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[3]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[4]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[2], controls[1]]);
            X(anc[0]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[4]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[2], controls[2]]);
            X(controls[0]);
            ApplyLowDepthAnd(controls[0], anc[0], anc[1]);
            X(controls[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[2], controls[2]]);
            CNOT(anc[2], anc[1]);
            CNOT(controls[2], anc[1]);
            CNOT(anc[1], target);
            CNOT(controls[2], anc[1]);
            CNOT(anc[2], anc[1]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[2], controls[2]]);
            X(controls[0]);
            Adjoint ApplyLowDepthAnd(controls[0], anc[0], anc[1]);
            X(controls[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[2], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[4]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[2], controls[1]]);
            X(anc[0]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[4]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[3]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
        }
    }
    
}