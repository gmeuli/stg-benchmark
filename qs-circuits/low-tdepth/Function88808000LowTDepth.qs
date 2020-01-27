namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function88808000LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[4]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[3], controls[2]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[3], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[2], controls[1]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[2], controls[2], controls[0]]);
            ApplyLowDepthAnd(controls[1], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[2], controls[2], controls[0]]);
            CNOT(controls[1], anc[1]);
            CNOT(anc[1], target);
            CNOT(controls[1], anc[1]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[2], controls[2], controls[0]]);
            Adjoint ApplyLowDepthAnd(controls[1], anc[0], anc[1]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[3], anc[2], controls[2], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[2], controls[1]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[3], controls[2]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[3], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2]]);
        }
    }
    
}