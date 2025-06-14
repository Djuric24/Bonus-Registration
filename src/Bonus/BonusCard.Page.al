page 65401 "MNB Bonus Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "MNB Bonus Header";
    Caption = 'Bonus Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the bonus number';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer number.';
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the starting date.';
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ending date.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bonus status.';
                }
                part(Lines; "MNB Bonus Subform")
                {
                    ApplicationArea = All;
                    Caption = 'Lines';
                    SubPageLink = "Document No." = field("No.");
                }
            }
        }
    }


    actions
    {
        area(Navigation)
        {
            action(CustomerCard)
            {
                ApplicationArea = All;
                Caption = 'Customer Card';
                ToolTip = 'Open customer card for the bonus.';
                Image = Customer;
                RunObject = page "Customer Card";
                RunPageLink = "No." = field("Customer No.");
            }
        }
    }


}