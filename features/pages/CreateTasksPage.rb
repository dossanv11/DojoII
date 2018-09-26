class CreateTasks < SitePrism::Page
    element :buttonCreateTask, "//*[@id='quickcreatetop']/ul/li[7]/a"
    element :subject, "input[id='name']"
    element :botaoSave, "input[id='SAVE']"
    element :botaoCreateTask, "//*[@id='quickcreatetop']/ul/li[7]/a"

    def realizaCadastro(campoSubject, campoStatus, campoPriority)
        element :status, "select('"+campoStatus+"', :from => 'status')"
        element :priority, "select('"+campoPriority+"', :from => 'priority')"
        subject.set(campoSubject)
        status.set(status)
        priority.set(priority)
    end
end