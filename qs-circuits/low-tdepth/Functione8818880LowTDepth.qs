namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functione8818880LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[5]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            X(anc[0]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            X(anc[1]);
            X(anc[0]);
            ApplyLowDepthAnd(controls[0], controls[1], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            X(controls[4]);
            ApplyLowDepthAnd(controls[4], anc[2], anc[0]);
            X(controls[4]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], anc[3]]);
            ApplyLowDepthAnd(anc[1], anc[0], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], anc[3]]);
            CNOT(anc[2], anc[4]);
            CNOT(anc[3], anc[4]);
            CNOT(anc[4], target);
            CNOT(anc[3], anc[4]);
            CNOT(anc[2], anc[4]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], anc[3]]);
            Adjoint ApplyLowDepthAnd(anc[1], anc[0], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], anc[3]]);
            X(controls[4]);
            Adjoint ApplyLowDepthAnd(controls[4], anc[2], anc[0]);
            X(controls[4]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyLowDepthAnd(controls[0], controls[1], anc[3]);
            X(anc[0]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            X(anc[1]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
        }
    }
    
}