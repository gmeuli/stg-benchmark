namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function6ac06ac0LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[2]) {
            ApplyLowDepthAnd(controls[1], controls[2], anc[0]);
            ApplyLowDepthAnd(controls[0], controls[3], anc[1]);
            CNOT(anc[1], anc[0]);
            CNOT(anc[0], target);
            CNOT(anc[1], anc[0]);
            Adjoint ApplyLowDepthAnd(controls[0], controls[3], anc[1]);
            Adjoint ApplyLowDepthAnd(controls[1], controls[2], anc[0]);
        }
    }
    
}