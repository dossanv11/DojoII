class CreateTasks < SitePrism::Page
    element :subject, "input[id='name']"
    element :varStatus, '#status'
    element :varPriority, '#priority'
    element :botaoSave, "#EditView > table > tbody > tr > td.buttons > div > input#SAVE"
    
    def realizaCadastro(campoSubject, campoStatus, campoPriority)
        subject.set(campoSubject)
        varStatus.select campoStatus
        varPriority.select campoPriority
    end
end

