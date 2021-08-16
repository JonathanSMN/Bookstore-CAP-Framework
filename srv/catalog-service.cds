using my.bookshop as my from '../db/schema';

service CatalogService @(impl: 'srv/cat-service.js') {
    
    /*@Capabilities: { 
    InsertRestrictions.Insertable: false,
    UpdateRestrictions.Updatable: false,
    DeleteRestrictions.Deletable: false  
    }*/
    entity Books as projection on my.Books;
    
    //@readonly 
    entity Authors as projection on my.Authors;
    
    entity Orders as projection on my.Orders;

}