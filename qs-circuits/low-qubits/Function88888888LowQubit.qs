namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function88888888LowQubit(): Unit
	{
		using (qs = Qubit[6])
		{
			H (qs[0]);
			CNOT  (qs[4],  qs[0]);
			CNOT  (qs[5],  qs[4]);
			CNOT  (qs[4],  qs[5]);
			Adjoint T (qs[4]);
			T (qs[5]);
			Adjoint T (qs[0]);
			CNOT  (qs[5],  qs[4]);
			CNOT  (qs[0],  qs[4]);
			CNOT  (qs[4],  qs[0]);
			CNOT  (qs[4],  qs[5]);
			T (qs[4]);
			Adjoint T (qs[5]);
			T (qs[0]);
			CNOT  (qs[5],  qs[4]);
			CNOT  (qs[0],  qs[5]);
			T (qs[5]);
			H (qs[5]);
			CNOT  (qs[0],  qs[5]);
			CNOT  (qs[5],  qs[0]);
			CNOT  (qs[0],  qs[5]);

		}
	}
}
