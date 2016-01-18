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
    private Integer referencia;

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

    public Integer getReferencia() {
        return referencia;
    }

    public void setReferencia(Integer referencia) {
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
        strColumns += "titulo,";
        strColumns += "contenido,";
        strColumns += "alta,";
        strColumns += "cambio,";
        strColumns += "hits,";
        strColumns += "id_usuario,";
        strColumns += "id_tipodocumento,";
        strColumns += "etiquetas,";
        strColumns += "publicado,";
        return strColumns;
    }

    public String getValues() {
        String strColumns = "";
        strColumns += referencia + ",";
        strColumns += categoria + ",";
        strColumns += nombrearticulo + ",";
        strColumns += cantidad + ",";


        return strColumns;
    }

    @Override
    public String toPairs() {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String strPairs = "";
        //strPairs += "referencia=" + referencia + ",";
        strPairs += "titulo=" + EncodingUtilHelper.quotate(categoria) + ",";
        strPairs += "contenido=" + EncodingUtilHelper.quotate(nombrearticulo) + ",";
        strPairs += "hits=" + cantidad + ",";
        strPairs += "id_usuario=" + id_usuario + ",";
        strPairs += "id_tipodocumento=" + id_tipodocumento + ",";
        strPairs += "etiquetas=" + EncodingUtilHelper.quotate(etiquetas) + ",";

        return strPairs;
    }

    @Override
    public DocumentoBean fill(ResultSet oResultSet, Connection pooledConnection, Integer expand) throws SQLException, Exception {
        this.setReferencia(oResultSet.getInt("referencia"));
        this.setCategoria(oResultSet.getString("titulo"));
        this.setNombrearticulo(oResultSet.getString("contenido"));
        this.setCantidad(oResultSet.getInt("hits"));

    }
}
