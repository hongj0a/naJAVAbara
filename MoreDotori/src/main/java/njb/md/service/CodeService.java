package njb.md.service;

import java.util.List;
import njb.md.domain.Code;

public interface CodeService {
	List<Code> getCodeListS(String C_code_horse);
	Code selectCodeS(String C_code);
}
