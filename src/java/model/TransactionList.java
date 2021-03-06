
package model;

import java.io.Serializable;

/**
 * A <b>TransactionList</b> object contains a journal entry ID and a transaction ID as well as the amount paid
 * 
 * @author ivy
 * @version 1.001
 * @since 2017-10-28
 */

/* Documentation for developer courtesy of Ivy Lim
 * COMMENTS (please comment any concerns and attach your names thanks!):
 * Please notify Ivy first before updating any major parts of this code.
 *
 * 
 *
 * original code: 10-28-17 by I. Lim
 * last update: 10-28-17 by I. Lim - changed access specifiers
*/
public class TransactionList implements Serializable {
    protected int journalID;
    protected TransactionReference trx;
    public double amountPaid;
	
	public TransactionList(){}
    
    public TransactionList(int journal, TransactionReference trx, double amountPaid){
        this.journalID = journal;
        this.trx = trx;
        this.amountPaid = amountPaid;
    }

    /**
     * returns the transaction journal attribute of the object
     * 
     * @param nothing
     * @return TransactionJournal object
     * @throws nothing
     * 
     * @since 10-28-17
     */
    public int getJournal() {
        return journalID;
    }

    /**
     * sets the transaction journal of the object
     * 
     * @param journal
     * @return nothing
     * @throws nothing
     * 
     * @since 10-28-17
     */
    public void setJournal(TransactionJournal journal) {
        this.journalID = journal.journalID;
    }

    /**
     * returns transaction reference of the object
     * 
     * @param nothing
     * @return TransactionReference of the object
     * @throws nothing
     * 
     * @since 10-28-17
     */
    public TransactionReference getTrx() {
        return trx;
    }

    /**
     * sets the transaction reference of the object
     * 
     * @param trx
     * @return nothing
     * @throws nothing
     * 
     * @since 10-28-17
     */
    public void setTrx(TransactionReference trx) {
        this.trx = trx;
    }

    /**
     * returns the amount paid
     * 
     * @param nothing
     * @return double 
     * @throws nothing
     * 
     * @since 10-28-17
     */
    public double getAmountPaid() {
        return amountPaid;
    }

    /**
     * sets the amount paid
     * 
     * @param amountPaid
     * @return nothing
     * @throws nothing
     * 
     * @since 10-28-17
     */
    public void setAmountPaid(double amountPaid) {
        this.amountPaid = amountPaid;
    }
    
    
}
