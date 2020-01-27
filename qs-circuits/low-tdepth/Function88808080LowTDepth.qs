namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function88808080LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[5]) {
            ApplyLowDepthAnd(controls[0], controls[1], anc[0]);
            ApplyLowDepthAnd(controls[3], controls[4], anc[1]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[1], anc[0]]);
            X(anc[2]);
            ApplyLowDepthAnd(anc[2], anc[3], anc[4]);
            X(anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[1], anc[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[2]), [anc[4], anc[1]]);
            ApplyLowDepthAnd(anc[0], anc[2], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[4], anc[1]]);
            CNOT(anc[3], target);
            ApplyToEachA(CNOT(_, anc[2]), [anc[4], anc[1]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[2], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [anc[4], anc[1]]);
            ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[1], anc[0]]);
            X(anc[2]);
            Adjoint ApplyLowDepthAnd(anc[2], anc[3], anc[4]);
            X(anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[1], anc[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[2]), [controls[2], controls[1]]);
            Adjoint ApplyLowDepthAnd(controls[3], controls[4], anc[1]);
            Adjoint ApplyLowDepthAnd(controls[0], controls[1], anc[0]);
        }
    }
    
}