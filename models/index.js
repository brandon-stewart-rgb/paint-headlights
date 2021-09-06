// import models
const Product = require('./Product');
const Category = require('./Category');
const Tag = require('./Tag');
const ProductTag = require('./ProductTag');



// associations
Product.belongsTo(Category, {
  foreignKey: 'category_id'
});

Category.hasMany(Product, {
  foreignKey: 'category_id'
});

Product.belongsToMany(Tag, {
  through: ProductTag,
  as: 'multiple_tags',
  foreignKey: 'product_id'
});

Tag.belongsToMany(Product, {
  through: ProductTag,
  as: 'multiple_tags',
  foreignKey: 'tag_id'
});


module.exports = {
  Product,
  Category,
  Tag,
  ProductTag,
};