namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functionf8808880LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[6]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2]]);
            ApplyLowDepthAnd(controls[0], controls[1], anc[1]);
            X(anc[0]);
            ApplyLowDepthAnd(controls[2], anc[0], anc[2]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[2], controls[2]]);
            ApplyLowDepthAnd(anc[0], anc[3], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[2], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[4], anc[1], anc[2]]);
            ApplyLowDepthAnd(anc[0], anc[3], anc[5]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[4], anc[1], anc[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            CNOT(anc[2], anc[5]);
            CNOT(anc[4], anc[5]);
            CNOT(anc[5], target);
            CNOT(anc[4], anc[5]);
            CNOT(anc[2], anc[5]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[4], anc[1], anc[2]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[3], anc[5]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[4], anc[1], anc[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[2], controls[2]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[3], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[2], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2]]);
            X(anc[0]);
            Adjoint ApplyLowDepthAnd(controls[2], anc[0], anc[2]);
            X(anc[0]);
            Adjoint ApplyLowDepthAnd(controls[0], controls[1], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2]]);
        }
    }
    
}