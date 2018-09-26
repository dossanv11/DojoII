class CreateTasks < SitePrism::Page
    element :buttonCreateTask, "//*[@id='quickcreatetop']/ul/li[7]/a"
    element :subject, "input[id='name']"
    element :status, "select('In Progress', :from => 'status')"
    element :priority, "select('High', :from => 'priority')"
    element :botaoSave, "input[id='SAVE']"

    def realizaCadastro(campoSubject, campoStatus, campoPriority)
        subject.set(campoSubject)
        status.set(campoStatus)
        priority.set(campoPriority)
    end
end