/*
 * Copyright (c) 2015 by Rafael Angel Aznar Aparici (rafaaznar at gmail dot com)
 * 
 * openAUSIAS: The stunning micro-library that helps you to develop easily 
 *             AJAX web applications by using Java and jQuery
 * openAUSIAS is distributed under the MIT License (MIT)
 * Sources at https://github.com/rafaelaznar/
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 * 
 */
package net.daw.bean.implementation;

import net.daw.bean.publicinterface.GenericBean;
import com.google.gson.annotations.Expose;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import net.daw.dao.implementation.TipodocumentoDao;
import net.daw.dao.implementation.UsuarioDao;
import net.daw.helper.statics.EncodingUtilHelper;

/**
 *
 * @author a044533450e
 */
public class ArticuloBean {

    
    @Expose
    private Integer id;
    
    @Expose
    private String referencia;

    @Expose
    private String categoria = "";

    @Expose
    private String nombrearticulo = "";

    @Expose
    private String descripcion = "";

    @Expose
    private Double precio;

    @Expose
    private Integer cantidad = 0;

        @Expose
    private Integer codigobarras = 0;
        
    @Expose
    private String color = "";
    
    @Expose
    private String marca = "";

    public ArticuloBean() {
        this.id = 0;
    }
    
    public ArticuloBean(Integer id) {
        this.id = id;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    
    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getNombrearticulo() {
        return nombrearticulo;
    }

    public void setNombrearticulo(String nombrearticulo) {
        this.nombrearticulo = nombrearticulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    public Integer getCodigobarras() {
        return codigobarras;
    }

    public void setCodigobarras(Integer codigobarras) {
        this.codigobarras = codigobarras;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    

    public String getColumns() {
        String strColumns = "";
        strColumns += "id,";
        strColumns += "referencia,";
        strColumns += "categoria,";
        strColumns += "nombrearticulo,";
        strColumns += "descripcion,";
        strColumns += "precio,";
        strColumns += "cantidad,";
        strColumns += "codigobarras,";
        strColumns += "color,";
        strColumns += "marca";
        return strColumns;
    }

    public String getValues() {
        String strColumns = "";
        strColumns += id + ",";
        strColumns += EncodingUtilHelper.quotate(referencia) + ",";
        strColumns += EncodingUtilHelper.quotate(categoria) + ",";
        strColumns += EncodingUtilHelper.quotate(nombrearticulo) + ",";
        strColumns += EncodingUtilHelper.quotate(descripcion) + ",";
        strColumns += precio + ",";
        strColumns += cantidad + ",";
        strColumns += codigobarras + ",";
        strColumns += EncodingUtilHelper.quotate(color) + ",";
        strColumns += EncodingUtilHelper.quotate(marca);



        return strColumns;
    }

// Metodo para fechas, de momento no hace falta
    public String toPairs() {
        String strPairs = "";
        strPairs += "id=" + id + ",";
        strPairs += "referencia=" + EncodingUtilHelper.quotate(referencia) + ",";
        strPairs += "categoria=" + EncodingUtilHelper.quotate(categoria) + ",";
        strPairs += "nombrearticulo=" + EncodingUtilHelper.quotate(nombrearticulo) + ",";
        strPairs += "descripcion=" + EncodingUtilHelper.quotate(descripcion) + ",";
        strPairs += "precio=" + precio + ",";
        strPairs += "cantidad=" + cantidad + ",";
        strPairs += "codigobarras=" + codigobarras + ",";
        strPairs += "color=" + EncodingUtilHelper.quotate(color) + ",";
        strPairs += "marca=" + EncodingUtilHelper.quotate(marca);


        return strPairs;
    }


    public ArticuloBean fill(ResultSet oResultSet, Connection pooledConnection, Integer expand) throws SQLException, Exception {
        this.setId(oResultSet.getInt("id"));
        this.setReferencia(oResultSet.getString("referencia"));
        this.setCategoria(oResultSet.getString("categoria"));
        this.setNombrearticulo(oResultSet.getString("nombrearticulo"));
        this.setDescripcion(oResultSet.getString("descripcion"));
        this.setPrecio(oResultSet.getDouble("precio"));
        this.setCantidad(oResultSet.getInt("cantidad"));
        this.setCodigobarras(oResultSet.getInt("codigobarras"));
        this.setColor(oResultSet.getString("color"));    
        this.setMarca(oResultSet.getString("marca"));        

// if (expand > 0) {
//            UsuarioBean oUsuarioBean = new UsuarioBean();
//            UsuarioDao oUsuarioDao = new UsuarioDao(pooledConnection);
//            oUsuarioBean.setId(oResultSet.getInt("id_usuario"));
//            oUsuarioBean = oUsuarioDao.get(oUsuarioBean, expand - 1);
//            this.setObj_usuario(oUsuarioBean);
//        } else {
//            this.setId_usuario(oResultSet.getInt("id_usuario"));
//        }
   
        return this;
    }

}
