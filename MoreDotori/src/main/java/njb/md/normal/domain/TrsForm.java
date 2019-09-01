package njb.md.normal.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TrsForm {
	private long trs_seq;
	private String trs_yyyy;
	private String trs_mmmm;
	private String trs_dddd;	
	private String trs_inout;
	private long trs_out_asset;
	private long trs_in_asset;
	private String trs_money;
	private String trs_memo;
}
