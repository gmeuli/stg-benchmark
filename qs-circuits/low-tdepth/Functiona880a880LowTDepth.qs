namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functiona880a880LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[3]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            ApplyLowDepthAnd(controls[0], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            CNOT(anc[1], target);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            Adjoint ApplyLowDepthAnd(controls[0], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[1]]);
        }
    }
    
}