
namespace Microsoft.Quantum.Core
{
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    
    operation XWrap(q : Qubit) : Unit is Adj {
        body (...) {
            X(q);
        }

        controlled (qs, ...) {
            if (Length(qs) == 0) {
                X(q);
            } elif (Length(qs) == 1) {
                CNOT(qs[0], q);
            } elif (Length(qs) == 2) {
                CCNOT(qs[0], qs[1], q);
            } else {
                borrowing (anc = Qubit()) {
                    CCNOT(qs[0], qs[1], anc);
                    (Controlled XWrap)(qs[2..Length(qs) - 1] + [anc], q);
                    CCNOT(qs[0], qs[1], anc);
                    (Controlled XWrap)(qs[2..Length(qs) - 1] + [anc], q);
                }
            }
        }
    }
}


