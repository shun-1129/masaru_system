package Beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;

public class PriceBean implements Serializable {
    public PriceBean() {super();}
    public ArrayList<HashMap<String, String>> list;
    public void setDATA(ArrayList<HashMap<String, String>> DATA) {
        this.list = DATA;
    }
    public ArrayList<HashMap<String, String>> getDATA() {
        return this.list;
    }
}
