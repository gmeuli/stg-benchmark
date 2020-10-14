namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function8888LowQubit(): Unit
	{
		using (qs = Qubit[5])
		{
			H (qs[0]);
			CNOT  (qs[3],  qs[0]);
			CNOT  (qs[3],  qs[4]);
			Adjoint T (qs[4]);
			T (qs[3]);
			Adjoint T (qs[0]);
			CNOT  (qs[3],  qs[4]);
			CNOT  (qs[0],  qs[4]);
			CNOT  (qs[4],  qs[0]);
			CNOT  (qs[4],  qs[3]);
			T (qs[4]);
			Adjoint T (qs[3]);
			T (qs[0]);
			CNOT  (qs[3],  qs[4]);
			CNOT  (qs[0],  qs[3]);
			T (qs[3]);
			H (qs[3]);
			CNOT  (qs[0],  qs[3]);
			CNOT  (qs[3],  qs[0]);
			CNOT  (qs[0],  qs[3]);
			CNOT  (qs[4],  qs[3]);
			CNOT  (qs[3],  qs[4]);
			CNOT  (qs[4],  qs[3]);

		}
	}
}
