class Ability
  include CanCan::Ability

  def initialize(user)

   if user.role? "director"
        can :read, :all
        can :create, Invoice
        can :create, RecievePayment
        can :create, Despatch
        can :create, Paybill
        can :create, Expense
        can :create, PurchaseOrder
        can :create, Client
        can :create, Supplier
        can :create, Account
        can :create, Product
        can :create, Addstock
        can :create, Material
        can :create, Production
        can :create, Company
        can :create, Category
        can :edit, :all 
        can :delete, :all

    elsif user.role? "admin"
        can :read, :all
        can :create, Invoice    
        can :create, RecievePayment
        can :create, Despatch
        can :create, Paybill       
        can :create, Expense
        can :create, PurchaseOrder
        can :create, Production
        can :create, Addstock
        can :edit, :all   
    end
  end
end
