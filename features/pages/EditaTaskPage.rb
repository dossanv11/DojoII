class EditTask < SitePrism::Page
    element :action, "#tab-actions > a"
    element :edtSubject, 'input[id="name"]'
    element :edit, 'input[id="edit_button"]'
    element :task, "#MassUpdate > div.list-view-rounded-corners > table > tbody > tr:nth-child(1) > td:nth-child(4) > b > a"
    element :botaoSave, "#EditView > table > tbody > tr > td.buttons > div > input#SAVE"
    

    def editaCadastro(edtCampoSubject)
        edtCampoSubject.send(edtCampoSubject)
    end
end