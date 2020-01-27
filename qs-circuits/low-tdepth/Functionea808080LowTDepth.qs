namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functionea808080LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[5]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[3]]);
            ApplyLowDepthAnd(controls[3], anc[0], anc[1]);
            ApplyLowDepthAnd(controls[1], controls[2], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[0], controls[3]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[2], controls[0]]);
            ApplyLowDepthAnd(anc[0], anc[3], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[2], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[0], controls[3]]);
            CNOT(controls[0], anc[4]);
            CNOT(anc[4], target);
            CNOT(controls[0], anc[4]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[0], controls[3]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[2], controls[0]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[3], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[2], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[0], controls[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[3]]);
            Adjoint ApplyLowDepthAnd(controls[1], controls[2], anc[2]);
            Adjoint ApplyLowDepthAnd(controls[3], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[3]]);
        }
    }
    
}