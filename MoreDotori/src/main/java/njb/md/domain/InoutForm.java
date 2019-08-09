package njb.md.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InoutForm {
	private long io_yyyy;
	private long io_mmmm;
	private long io_dddd;	
	private String io_inout;
	private long io_asset;
	private String io_categori;
	private String io_money;
	private String io_memo;
}
