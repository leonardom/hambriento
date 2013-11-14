/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.unifeob.hambriento.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author osvaldogusmao
 */
public abstract class MD5Converter {

    public static String convert(String password) {
        MessageDigest md;
        try {
            md = MessageDigest.getInstance("MD5");
            BigInteger hash = new BigInteger(1, md.digest(password.getBytes()));
            return hash.toString(16);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(MD5Converter.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
