package njb.md.domain;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
public class AssetListVo {
	
	private int pageSize;
	private int page;
	
	{
		pageSize = 10;
		page = 1;
	}
	
	public int getStartRow() {
		return (page-1)* pageSize;
	}
	public int getEndRow() {
		return page * pageSize;
	}
}
