namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function80008000LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[5]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[0]]);
            ApplyLowDepthAnd(controls[1], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[2]]);
            ApplyLowDepthAnd(controls[3], anc[0], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[1]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[2], controls[3], controls[0]]);
            ApplyLowDepthAnd(anc[0], anc[3], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[2], controls[3], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[1]]);
            CNOT(anc[4], target);
            ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[1]]);
            ApplyToEachA(CNOT(_, anc[3]), [anc[2], controls[3], controls[0]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[3], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[3]), [anc[2], controls[3], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[2]]);
            Adjoint ApplyLowDepthAnd(controls[3], anc[0], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[1], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[0]]);
            Adjoint ApplyLowDepthAnd(controls[1], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[0]]);
        }
    }
    
}