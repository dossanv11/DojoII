class DeleteTask < SitePrism::Page
    element :task, "#MassUpdate > div.list-view-rounded-corners > table > tbody > tr:nth-child(1) > td:nth-child(4) > b > a"
    element :action, "#tab-actions > a"
    element :delete, 'input[id="delete_button"]'
end