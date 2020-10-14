namespace AffineCosts
{
	open Microsoft.Quantum.Canon;
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Arrays;

	operation Function8080LowQubit(): Unit
	{
		using (qs = Qubit[5])
		{
			H (qs[1]);
			CNOT  (qs[3],  qs[1]);
			CNOT  (qs[1],  qs[3]);
			CNOT  (qs[1],  qs[2]);
			T (qs[3]);
			Adjoint T (qs[1]);
			T (qs[2]);
			CNOT  (qs[1],  qs[3]);
			CNOT  (qs[2],  qs[3]);
			CNOT  (qs[2],  qs[1]);
			CNOT  (qs[3],  qs[1]);
			CNOT  (qs[3],  qs[2]);
			Adjoint T (qs[3]);
			CNOT  (qs[3],  qs[1]);
			H (qs[3]);
			H (qs[0]);
			CNOT  (qs[3],  qs[0]);
			CNOT  (qs[4],  qs[3]);
			CNOT  (qs[3],  qs[4]);
			Adjoint T (qs[0]);
			Adjoint T (qs[3]);
			T (qs[4]);
			CNOT  (qs[3],  qs[0]);
			CNOT  (qs[4],  qs[0]);
			CNOT  (qs[0],  qs[3]);
			T (qs[0]);
			CNOT  (qs[4],  qs[0]);
			CNOT  (qs[3],  qs[0]);
			H (qs[4]);
			CNOT  (qs[1],  qs[2]);
			CNOT  (qs[4],  qs[2]);
			CNOT  (qs[2],  qs[1]);
			T (qs[4]);
			Adjoint T (qs[1]);
			T (qs[2]);
			CNOT  (qs[1],  qs[4]);
			CNOT  (qs[2],  qs[4]);
			CNOT  (qs[2],  qs[1]);
			CNOT  (qs[4],  qs[1]);
			CNOT  (qs[4],  qs[2]);
			Adjoint T (qs[4]);
			CNOT  (qs[1],  qs[4]);
			CNOT  (qs[4],  qs[1]);
			H (qs[1]);
			CNOT  (qs[1],  qs[0]);
			CNOT  (qs[0],  qs[3]);
			Adjoint T (qs[1]);
			T (qs[0]);
			Adjoint T (qs[3]);
			CNOT  (qs[0],  qs[1]);
			CNOT  (qs[3],  qs[1]);
			CNOT  (qs[3],  qs[0]);
			CNOT  (qs[1],  qs[0]);
			CNOT  (qs[1],  qs[3]);
			T (qs[1]);
			CNOT  (qs[0],  qs[1]);
			H (qs[1]);
			CNOT  (qs[0],  qs[1]);
			CNOT  (qs[1],  qs[0]);
			CNOT  (qs[0],  qs[1]);
			CNOT  (qs[4],  qs[3]);
			CNOT  (qs[3],  qs[4]);
			CNOT  (qs[4],  qs[3]);
			CNOT  (qs[3],  qs[2]);
			CNOT  (qs[2],  qs[3]);
			CNOT  (qs[3],  qs[2]);

		}
	}
}
