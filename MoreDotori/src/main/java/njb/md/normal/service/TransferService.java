package njb.md.normal.service;

import njb.md.normal.domain.Transfer;

public interface TransferService {
	Transfer selectTransSeqS(long T_seq);
	void insertTransS(Transfer ts);
	void deleteTransS(long T_seq);
	void updateTransS(Transfer ts);
	Transfer searchInoutS(long T_seq, String searchStr);
}
