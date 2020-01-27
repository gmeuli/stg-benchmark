namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functione0a8c880LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[6]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            X(anc[1]);
            ApplyLowDepthAnd(controls[1], controls[3], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            ApplyLowDepthAnd(controls[0], anc[0], anc[4]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[1], anc[3], anc[5]);
            X(anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            CNOT(anc[5], anc[4]);
            CNOT(anc[4], target);
            CNOT(anc[5], anc[4]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[1], anc[3], anc[5]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(controls[0], anc[0], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyLowDepthAnd(controls[1], controls[3], anc[3]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            X(anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[1]]);
        }
    }
    
}