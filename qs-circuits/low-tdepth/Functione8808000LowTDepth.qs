namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Functione8808000LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[5]) {
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[1], controls[0], controls[3]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[1], controls[0], controls[3]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[4], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[4], controls[3]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[4], controls[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[4], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[3]]);
            ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            CNOT(anc[4], target);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[3]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[4]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [anc[3], controls[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[1]]);
            ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[4], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[4], controls[3]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[3]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[4], controls[3]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [anc[2], controls[4], controls[1], controls[0]]);
            ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[1], controls[0], controls[3]]);
            ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1]]);
            Adjoint ApplyLowDepthAnd(anc[0], anc[1], anc[2]);
            Adjoint ApplyToEachA(CNOT(_, anc[1]), [controls[2], controls[1]]);
            Adjoint ApplyToEachA(CNOT(_, anc[0]), [controls[4], controls[1], controls[0], controls[3]]);
        }
    }
    
}