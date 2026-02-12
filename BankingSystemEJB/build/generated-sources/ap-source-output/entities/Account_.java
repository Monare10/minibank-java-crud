package entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2026-02-11T12:35:01")
@StaticMetamodel(Account.class)
public class Account_ { 

    public static volatile SingularAttribute<Account, Double> balance;
    public static volatile SingularAttribute<Account, String> fullName;
    public static volatile SingularAttribute<Account, Long> id;
    public static volatile SingularAttribute<Account, Date> creationDate;
    public static volatile SingularAttribute<Account, String> email;

}