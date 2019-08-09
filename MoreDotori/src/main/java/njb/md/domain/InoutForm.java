package njb.md.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InoutForm {
	private long io_seq;
	private String io_yyyy;
	private String io_mmmm;
	private String io_dddd;	
	private String io_inout;
	private long io_asset;
	private String io_categori;
	private String io_money;
	private String io_memo;
}
