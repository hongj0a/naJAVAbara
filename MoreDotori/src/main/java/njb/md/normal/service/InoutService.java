package njb.md.normal.service;

import njb.md.normal.domain.Inout;

public interface InoutService {
	Inout selectInoutSeqS(long I_seq);
	void insertInoutS(Inout io);
	void deleteInoutS(long I_seq);
	void updateInoutS(Inout io);
	Inout searchInoutS(long I_seq, String searchStr);
}
