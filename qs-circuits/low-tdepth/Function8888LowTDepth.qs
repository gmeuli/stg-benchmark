namespace AffineCosts {
    
    open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;
    
    
operation Function8888LowTDepth (controls : Qubit[], target : Qubit) : Unit
{
        
        using (anc = Qubit[1]) {
            ApplyLowDepthAnd(controls[0], controls[1], anc[0]);
            CNOT(anc[0], target);
            Adjoint ApplyLowDepthAnd(controls[0], controls[1], anc[0]);
        }
    }
    
}