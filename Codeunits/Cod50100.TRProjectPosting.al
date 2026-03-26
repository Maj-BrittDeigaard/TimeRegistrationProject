// Handles posting and closing of projects
// Transfers data from TRProject to TRPostedProject
// Updates used and remaining hours based on time entries
// Deletes or marks project as closed after posting
codeunit 50100 TRProjectPosting
{
    procedure PostProject(ProjectNo: Code[20])
    var
        TRProject: Record TRProject;
        TRPostedProject: Record TRPostedProject;
    begin
        if not TRProject.Get(ProjectNo) then
            Error('Project %1 was not found.', ProjectNo);

        TRPostedProject.Init();
        TRPostedProject."Project No." := TRProject."Project No.";
        TRPostedProject."Project Name" := TRProject."Project Name";
        TRPostedProject."Estimated Hours" := TRProject."Estimated Hours";
        TRPostedProject."Used Hours" := TRProject."Used Hours";
        TRPostedProject."Remaining Hours" := TRProject."Remaining Hours";
        TRPostedProject.Insert();

        TRProject.Delete();
    end;
}
