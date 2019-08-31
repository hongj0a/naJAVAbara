package njb.md.domain;

import java.util.List;

import njb.md.domain.AssetList;

public class AssetListResult {
	private int page;
	private long totalCount;
	private int pageSize;
	private List<AssetList> list;
	private long totalPageCount;
	
	public AssetListResult(int page, long totalCount, int pageSize, List<AssetList> list) {
		this.page = page;
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		this.list = list;
		this.totalPageCount = calTotalPageCount();
	}
	private long calTotalPageCount() {
		long tpc = totalCount/pageSize;
		if(totalCount%pageSize != 0) tpc++;
		
		return tpc;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List<AssetList> getList() {
		return list;
	}

	public void setList(List<AssetList> list) {
		this.list = list;
	}

	public long getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(long totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	
}
