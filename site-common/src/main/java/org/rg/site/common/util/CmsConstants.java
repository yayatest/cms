/**
 * (C) Lombard Risk Management plc 2011-2017
 * <p/>
 * This file is proprietary and intellectual property of Lombard Risk Management plc.
 * It may not be modified, copied, duplicated, distributed, enhanced, reverse engineered,
 * reverse compiled or used, in whole or in part, with other applications or services whether
 * internally provided or provided by a 3rd party, for any purpose or application not defined
 * in your Lombard Risk master service contract or software license agreement or maintenance
 * agreement without the express written permission of a Director of Lombard Risk Management plc.
 * Any unauthorised use may be in beach of your agreement with Lombard Risk Management plc which
 * may either invalidate your software licenses, or may incur additional charges.  Any such
 * breach may lead to civil/criminal proceedings.
 */
package org.rg.site.common.util;

/**
 * <strong>Class Description :</strong>Please write class
 * summary here. <br>
 * <br> Please write class detail explanation here.</br>
 *
 * @author Haitao Ji
 * @created 10/2/2017
 */
public class CmsConstants {
	public enum MENUTYPE {
		LIST("列表", 0),
		PAGE("页面", 1);
		String name;
		Integer id;

		private MENUTYPE(String name, Integer id) {
			this.name = name;
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String label) {
			this.name = label;
		}

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}
	}
}
