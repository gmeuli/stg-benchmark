namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functione8c0a880LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[5]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[4], controls[1]]);
            ApplyLowDepthAnd(controls[3], anc[0], anc[3]);
            X(anc[1]);
            X(anc[2]);
            ApplyLowDepthAnd(anc[1], anc[2], anc[4]);
            X(anc[2]);
            X(anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[4], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[4], controls[0]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[4], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            X(anc[0]);
            ApplyLowDepthAnd(anc[0], anc[2], anc[1]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            CNOT(anc[3], anc[1]);
            CNOT(anc[1], target);
            CNOT(anc[3], anc[1]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            X(anc[0]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[2], anc[1]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[4], controls[0]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[4], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[4], controls[1]]);
            X(anc[1]);
            X(anc[2]);
            Adjoint ApplyLowDepthAnd(anc[1], anc[2], anc[4]);
            X(anc[2]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(controls[3], anc[0], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[4], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[0]]);
        }
    }
    
}