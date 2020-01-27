namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function6ac8e240LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[5]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[1], controls[0]]);
            ApplyLowDepthAnd(controls[1], anc[0], anc[2]);
            ApplyLowDepthAnd(controls[2], anc[1], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[2], controls[1], controls[0]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], anc[4]]);
            ApplyLowDepthAnd(controls[0], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], anc[4]]);
            CNOT(anc[3], anc[1]);
            CNOT(anc[1], target);
            CNOT(anc[3], anc[1]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], anc[4]]);
            Adjoint ApplyLowDepthAnd(controls[0], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], anc[4]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[2], controls[1], controls[0]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[2], controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[1], controls[0]]);
            Adjoint ApplyLowDepthAnd(controls[2], anc[1], anc[3]);
            Adjoint ApplyLowDepthAnd(controls[1], anc[0], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[1], controls[0]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2]]);
        }
    }
    
}