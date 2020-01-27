namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function80808080LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[2]) {
            ApplyLowDepthAnd(controls[1], controls[2], anc[0]);
            ApplyLowDepthAnd(controls[0], anc[0], anc[1]);
            CNOT(anc[1], target);
            Adjoint ApplyLowDepthAnd(controls[0], anc[0], anc[1]);
            Adjoint ApplyLowDepthAnd(controls[1], controls[2], anc[0]);
        }
    }
    
}