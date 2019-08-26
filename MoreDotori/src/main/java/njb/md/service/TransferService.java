package njb.md.service;

import njb.md.domain.Transfer;

public interface TransferService {
	Transfer selectTransSeqS(long T_seq);
	void insertTransS(Transfer ts);
	void deleteTransS(long T_seq);
	void updateTransS(Transfer ts);
	Transfer searchInoutS(long T_seq, String searchStr);
}
