namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function80000000LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[4]) {
            ApplyLowDepthAnd(controls[0], controls[1], anc[0]);
            ApplyLowDepthAnd(controls[2], controls[3], anc[1]);
            ApplyLowDepthAnd(anc[0], controls[4], anc[2]);
            ApplyLowDepthAnd(anc[1], anc[2], anc[3]);
            CNOT(anc[3], target);
            Adjoint ApplyLowDepthAnd(anc[1], anc[2], anc[3]);
            Adjoint ApplyLowDepthAnd(anc[0], controls[4], anc[2]);
            Adjoint ApplyLowDepthAnd(controls[2], controls[3], anc[1]);
            Adjoint ApplyLowDepthAnd(controls[0], controls[1], anc[0]);
        }
    }
    
}