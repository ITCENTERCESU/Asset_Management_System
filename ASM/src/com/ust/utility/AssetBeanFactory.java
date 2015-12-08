package com.ust.utility;

import com.ust.model.AssetBean;

public class AssetBeanFactory {
	
	public static AssetBean getFactoryBean(String itemName, String category ) {
		
		AssetBean asset = new AssetBean();
		
		
		asset.setItemName(itemName);
		asset.setCategory(category);

		
		return asset;
	}
}
