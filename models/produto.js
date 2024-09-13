'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Produto extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      Produto.belongsToMany(models.produto, {
        foreignKey: 'ProdutoId', through: 'Item', as: 'produto_serv'});
        Produto.hasMany(models.produto, {
          foreignKey: 'ProdutoId'})
      }
    }
  }
  Produto.init({
    nome: DataTypes.STRING,
    unidade: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Produto',
  });
  return Produto;
};