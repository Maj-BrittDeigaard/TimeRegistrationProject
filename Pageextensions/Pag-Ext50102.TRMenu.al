pageextension 50102 TRMenu extends "Order Processor Role Center"
{
    actions
    {
        addlast(sections)
        {
            group("Project")
            {
                action("Setup")
                {
                    RunObject = page "TRSetup";
                    ApplicationArea = All;
                }

                action("Project Card")
                {
                    RunObject = page "TRProjectCard";
                    ApplicationArea = All;
                }
            }
        }
    }
}
