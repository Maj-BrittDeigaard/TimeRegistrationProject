// List page showing all active projects
// Displays key project information (name, hours, etc.)
// Provides navigation to project card
page 50101 TRProjectList
{
    ApplicationArea = All;
    Caption = 'TRProjectList';
    PageType = Card;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

            }
        }
    }
}
