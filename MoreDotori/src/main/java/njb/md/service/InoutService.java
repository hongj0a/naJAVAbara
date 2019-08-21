package njb.md.service;

import njb.md.domain.Inout;

public interface InoutService {
	Inout selectInoutSeqS(long I_seq);
	void insertInoutS(Inout io);
	void deleteInoutS(long I_seq);
	void updateInoutS(Inout io);
}
