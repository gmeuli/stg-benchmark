namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functione8808080LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[6]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[1], controls[0]]);
            ApplyLowDepthAnd(controls[3], controls[4], anc[2]);
            X(anc[0]);
            X(anc[1]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            X(anc[1]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[2], controls[1], controls[0]]);
            X(anc[0]);
            ApplyLowDepthAnd(anc[2], anc[0], anc[1]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[4]), [anc[1], anc[3]]);
            X(anc[0]);
            ApplyLowDepthAnd(anc[0], anc[4], anc[5]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[4]), [anc[1], anc[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            CNOT(anc[3], anc[5]);
            CNOT(anc[5], target);
            CNOT(anc[3], anc[5]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[4]), [anc[1], anc[3]]);
            X(anc[0]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[4], anc[5]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[4]), [anc[1], anc[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[2], controls[1], controls[0]]);
            X(anc[0]);
            Adjoint ApplyLowDepthAnd(anc[2], anc[0], anc[1]);
            X(anc[0]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], controls[2], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[1], controls[0]]);
            X(anc[0]);
            X(anc[1]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            X(anc[1]);
            X(anc[0]);
            Adjoint ApplyLowDepthAnd(controls[3], controls[4], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[2], controls[1]]);
        }
    }
    
}