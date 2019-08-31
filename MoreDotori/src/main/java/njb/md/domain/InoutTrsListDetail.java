package njb.md.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class InoutTrsListDetail {
	private long IOT_seq;
	private String C_inout;
	private long IOT_asset;
	private String IOT_assetgori;
	private Date IOT_date;
	private long IOT_money;
	private String IOT_memo;
}
