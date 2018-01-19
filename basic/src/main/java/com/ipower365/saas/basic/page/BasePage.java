package com.ipower365.saas.basic.page;

/**
 * 分页
 * 
 * @ProjectName: dbstore
 * @ClassName: BasePage.java
 * @Description: 
 * @author: Shuaibing.zhao
 * @date: 2017年6月27日 上午11:57:26
 */
public class BasePage {

	private Integer page = 1;

	private Integer rows = 10;

	private String sort;

	private String order;
	
	private String q;

	/**
	 * 分页导航
	 */
	private Pager pager = new Pager();

	public Pager getPager() {
		pager.setPageId(getPage());
		pager.setPageSize(getRows());
		String orderField = "";
		if (sort != null && sort.trim().length() > 0) {
			orderField = sort;
		}
		if (orderField.trim().length() > 0 && (order != null && order.trim().length() > 0)) {
			orderField += " " + order;
		}
		pager.setOrderField(orderField);
		return pager;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public String getQ() {
		return q;
	}

	public void setQ(String q) {
		this.q = q;
	}

}
