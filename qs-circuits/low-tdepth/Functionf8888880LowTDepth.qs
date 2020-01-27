namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functionf8888880LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[5]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[0], controls[3], controls[2]]);
            X(anc[0]);
            ApplyLowDepthAnd(controls[1], anc[0], anc[1]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[0], controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[4]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[2]]);
            ApplyLowDepthAnd(anc[0], anc[2], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[4]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[3], anc[1], controls[2], controls[1]]);
            X(anc[0]);
            ApplyLowDepthAnd(anc[0], anc[2], anc[4]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[3], anc[1], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            CNOT(anc[1], anc[4]);
            CNOT(controls[1], anc[4]);
            CNOT(anc[4], target);
            CNOT(controls[1], anc[4]);
            CNOT(anc[1], anc[4]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[3], anc[1], controls[2], controls[1]]);
            X(anc[0]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[2], anc[4]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[3], anc[1], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[4]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[2]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[2], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[1], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[4]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[0], controls[3], controls[2]]);
            X(anc[0]);
            Adjoint ApplyLowDepthAnd(controls[1], anc[0], anc[1]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[0], controls[3], controls[2]]);
        }
    }
    
}