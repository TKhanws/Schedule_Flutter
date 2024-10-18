class ProductObject {
  final String urlImage;
  final String productName;
  final String description;
  final int cost;
  ProductObject(
      {required this.urlImage,
      required this.productName,
      required this.description,
      required this.cost});
}

List<ProductObject> getListProducts() {
  return <ProductObject>[
    ProductObject(
        urlImage:
            "https://i.pinimg.com/control/564x/29/60/c5/2960c53e3de158b7e88045553ba580d4.jpg",
        productName: "Country picture",
        description: "One day",
        cost: 200000),
    ProductObject(
        urlImage:
            "https://i.pinimg.com/control/564x/36/e6/d2/36e6d21869b2f69d575a0bb2415e1c5b.jpg",
        productName: "Duck picture",
        description: "Animals",
        cost: 200000),
    ProductObject(
        urlImage:
            "https://i.pinimg.com/564x/13/14/fa/1314faae0ff01041b9e4cdf81138123a.jpg",
        productName: "Wall picture",
        description: "Don't stop",
        cost: 150000),
    ProductObject(
        urlImage:
            "https://i.pinimg.com/control/564x/29/60/c5/2960c53e3de158b7e88045553ba580d4.jpg",
        productName: "Country picture",
        description: "One day",
        cost: 150000),
    ProductObject(
        urlImage:
            "https://i.pinimg.com/control/564x/36/e6/d2/36e6d21869b2f69d575a0bb2415e1c5b.jpg",
        productName: "Duck picture",
        description: "Animals",
        cost: 150000),
    ProductObject(
        urlImage:
            "https://i.pinimg.com/564x/13/14/fa/1314faae0ff01041b9e4cdf81138123a.jpg",
        productName: "Wall picture",
        description: "Don't stop",
        cost: 150000),
    ProductObject(
        urlImage:
            "https://i.pinimg.com/control/564x/29/60/c5/2960c53e3de158b7e88045553ba580d4.jpg",
        productName: "Country picture",
        description: "One day",
        cost: 150000),
    ProductObject(
        urlImage:
            "https://i.pinimg.com/control/564x/36/e6/d2/36e6d21869b2f69d575a0bb2415e1c5b.jpg",
        productName: "Duck picture",
        description: "Animals",
        cost: 150000),
    ProductObject(
        urlImage:
            "https://i.pinimg.com/564x/13/14/fa/1314faae0ff01041b9e4cdf81138123a.jpg",
        productName: "Wall picture",
        description: "Don't stop",
        cost: 150000),
  ];
}
