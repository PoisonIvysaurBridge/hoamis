
package model;

import java.io.Serializable;

/**
 * BoardStatus Object
 * A <b>BoardStatus</b> object contains the ID of the board status type and
 * the board status description
 * 
 * @author justine
 * @version 1.001
 * @since 2017-10-27
 */

/* Documentation for developer courtesy of Ivy Lim
 * COMMENTS (please comment any concerns and attach your names thanks!):
 * Please seek Justine first before updating any major parts of this code. 
 * 
 *
 * 
 *
 * original code: 10-27-17
 * last update:
*/
public class BoardStatus implements Serializable {
    
    private int statusID;
    protected String status;
	
	public BoardStatus(){}

    public BoardStatus(String status) {
        this.status = status;
    }

    /**
     * returns the status ID of the object
     * 
     * @return int containing the status ID of the object
     * @since 10-28-17
     */
    public int getStatusID() {
        return statusID;
    }

    /**
     * sets the status ID of the object
     * 
     * @param statusID
     * @return nothing
     * @throws nothing
     * 
     * @since 10-28-17
     */
    public void setStatusID(int statusID) {
        this.statusID = statusID;
    }

    /**
     * returns the status of the object
     * 
     * @param nothing
     * @return String containing the status description of the object
     * @throws nothing
     * 
     * @since 10-28-17
     */
    public String getStatus() {
        return status;
    }

    /**
     * sets the status of the object
     * 
     * @param status
     * @return nothing
     * @throws nothing
     * 
     * @since 10-28-17
     */
    public void setStatus(String status) {
        this.status = status;
    }
    
}
