namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functionee84a060LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[8]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[4], controls[1]]);
            ApplyLowDepthAnd(controls[4], anc[0], anc[2]);
            ApplyLowDepthAnd(controls[2], anc[1], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[4], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[2]]);
            ApplyToEachA(CNOT(_, anc[4]), [controls[4], controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[5]), [anc[3], controls[4]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[6]);
            ApplyLowDepthAnd(anc[4], anc[5], anc[7]);
            Adjoint ApplyToEachA(CNOT(_, anc[5]), [anc[3], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[4]), [controls[4], controls[3], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2], controls[0]]);
            CNOT(anc[7], anc[6]);
            CNOT(controls[4], anc[6]);
            CNOT(controls[2], anc[6]);
            CNOT(anc[6], target);
            CNOT(controls[2], anc[6]);
            CNOT(controls[4], anc[6]);
            CNOT(anc[7], anc[6]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[2]]);
            ApplyToEachA(CNOT(_, anc[4]), [controls[4], controls[3], controls[2]]);
            ApplyToEachA(CNOT(_, anc[5]), [anc[3], controls[4]]);
            Adjoint ApplyLowDepthAnd(anc[4], anc[5], anc[7]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[6]);
            Adjoint ApplyToEachA(CNOT(_, anc[5]), [anc[3], controls[4]]);
            Adjoint ApplyToEachA(CNOT(_, anc[4]), [controls[4], controls[3], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[2], controls[2]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[2], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[4], controls[1]]);
            Adjoint ApplyLowDepthAnd(controls[2], anc[1], anc[3]);
            Adjoint ApplyLowDepthAnd(controls[4], anc[0], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[4], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[3], controls[2], controls[1]]);
        }
    }
    
}