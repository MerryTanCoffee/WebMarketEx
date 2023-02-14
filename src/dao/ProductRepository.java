package dao;

import java.util.ArrayList;

import dto.ProductVO;

public class ProductRepository {
	
	private ArrayList<ProductVO> listOfProducts = new ArrayList<ProductVO>();
	private static ProductRepository instance = new ProductRepository();
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		ProductVO phone = new ProductVO("P1234", "iPhone 6s", 800000);
		
		phone.setDescription("Little pretty iPhone");
		phone.setCategory("SmartPhone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("NEW");
		phone.setFilename("P1234");
		
		ProductVO notebook = new ProductVO("P1235", "LG Gram",1500000);
		notebook.setDescription("SPID, SUPER LIGHT Gram");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("NEW");
		notebook.setFilename("P1235");
		
		ProductVO tablet = new ProductVO("P1236","Galaxy Tab",900000);
		tablet.setDescription("Octa-core Tablet");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("NEW");
		tablet.setFilename("P1236");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	
	public ArrayList<ProductVO> getAllProducts(){
		return listOfProducts;
	}
	
	public ProductVO getProductById(String productId) {
		ProductVO productById = null;
		
		for(int i = 0; i < listOfProducts.size(); i++) {
			ProductVO product = listOfProducts.get(i);
			
			if(product != null && product.getProductId() != null 
					&& product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	public void addProduct(ProductVO product) {
		listOfProducts.add(product);
	}
	
}
