
package model;

import java.sql.Date;
import java.io.Serializable;

/**
 * MovingOutClearance Object
 * A <b>MovingOutClearance</b> object contains the different attributes of 
 * a moving out clearance ...
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
 * last update: 10-28-17 by I. Lim - added getters & setters
*/
public class MovingOutClearance implements Serializable {
    
    protected int clearanceID;
    protected Date movingoutdate;
    protected BoardMember financeclear;
    protected BoardMember securityclear;
    protected BoardMember violationsclear;
    protected TransactionReference trx;
	
	public MovingOutClearance(){}

    public MovingOutClearance(Date movingoutdate, BoardMember financeclear, BoardMember securityclear, BoardMember violationsclear, TransactionReference trx) {
        this.movingoutdate = movingoutdate;
        this.financeclear = financeclear;
        this.securityclear = securityclear;
        this.violationsclear = violationsclear;
        this.trx = trx;
    }

    public int getClearanceID() {
        return clearanceID;
    }

    public void setClearanceID(int clearanceID) {
        this.clearanceID = clearanceID;
    }

    public Date getMovingoutdate() {
        return movingoutdate;
    }

    public void setMovingoutdate(Date movingoutdate) {
        this.movingoutdate = movingoutdate;
    }

    public BoardMember getFinanceclear() {
        return financeclear;
    }

    public void setFinanceclear(BoardMember financeclear) {
        this.financeclear = financeclear;
    }

    public BoardMember getSecurityclear() {
        return securityclear;
    }

    public void setSecurityclear(BoardMember securityclear) {
        this.securityclear = securityclear;
    }

    public BoardMember getViolationsclear() {
        return violationsclear;
    }

    public void setViolationsclear(BoardMember violationsclear) {
        this.violationsclear = violationsclear;
    }

    public TransactionReference getTrx() {
        return trx;
    }

    public void setTrx(TransactionReference trx) {
        this.trx = trx;
    }

    
    
}
