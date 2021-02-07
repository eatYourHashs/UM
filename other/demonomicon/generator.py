# Import proper data
import json, math, re, os
with open('entries.json') as file:
  data = json.load(file)
entries = data['entries']
ids = []
for entry in entries :
    id = entry['id']
    ids.append(id)

# Create string for the beginning four "intro" pages (non-indexes, non-entries)
start_string = "{\"pools\": [{\"rolls\": 1,\"entries\": [{\"type\": \"minecraft:item\",\"weight\": 1,\"functions\": [{\"function\": \"minecraft:set_nbt\",\"tag\": \"{um_id:\\\"demonomicon\\\",resolved:1b,HideFlags:32,display:{Lore:[\\\"{\\\\\\\"translate\\\\\\\":\\\\\\\"item.um.demonomicon.lore\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"gray\\\\\\\",\\\\\\\"italic\\\\\\\":false}\\\"],Name:\\\"{\\\\\\\"color\\\\\\\":\\\\\\\"yellow\\\\\\\",\\\\\\\"translate\\\\\\\":\\\\\\\"item.um.demonomicon\\\\\\\",\\\\\\\"italic\\\\\\\":false}\\\"},CustomModelData:420001,author:\\\"Hashs\\\",title:\\\"Demonomicon\\\"}\"}, {\"function\": \"minecraft:set_nbt\",\"tag\": \"{pages:[\'[{\\\"translate\\\":\\\"item.um.demonomicon.cover_page\\\",\\\"color\\\":\\\"white\\\",\\\"font\\\":\\\"um:demonomicon\\\",\\\"with\\\":[{\\\"translate\\\":\\\"pack.um.version\\\",\\\"color\\\":\\\"red\\\",\\\"underlined\\\":true},{\\\"translate\\\":\\\"item.um.demonomicon.cover_page.pmc\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"open_url\\\",\\\"value\\\":\\\"https://www.planetminecraft.com/data-pack/undermagic/\\\"},\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.cover_page.pmc.hover_event\\\"}}},{\\\"translate\\\":\\\"item.um.demonomicon.cover_page.discord\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"open_url\\\",\\\"value\\\":\\\"https://discord.gg/UYxhxDj\\\"},\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.cover_page.discord.hover_event\\\"}}},{\\\"translate\\\":\\\"item.um.demonomicon.cover_page.content\\\",\\\"color\\\":\\\"black\\\"}]}]\',\'{\\\"translate\\\":\\\"item.um.demonomicon.example_page\\\",\\\"color\\\":\\\"white\\\",\\\"font\\\":\\\"um:demonomicon\\\",\\\"with\\\":[{\\\"translate\\\":\\\"item.um.demonomicon.example_page.icon\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.example_page.title\\\"}}},{\\\"translate\\\":\\\"item.um.demonomicon.page.history_icon\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.page.history_icon.hover_event\\\",\\\"bold\\\":true,\\\"with\\\":[{\\\"translate\\\":\\\"item.um.demonomicon.example_page.history\\\",\\\"bold\\\":false}]}}},{\\\"translate\\\":\\\"item.um.demonomicon.page.contributors_icon\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.page.contributors_icon.hover_event\\\",\\\"bold\\\":true,\\\"with\\\":[{\\\"translate\\\":\\\"item.um.demonomicon.example_page.contributors\\\",\\\"bold\\\":false}]}}},{\\\"translate\\\":\\\"item.um.demonomicon.page.more_info_icon\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.page.more_info_icon.hover_event\\\",\\\"bold\\\":true,\\\"with\\\":[{\\\"translate\\\":\\\"item.um.demonomicon.example_page.more_info\\\",\\\"bold\\\":false}]}}},{\\\"translate\\\":\\\"item.um.demonomicon.page.crafting_icon\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.page.crafting_icon.hover_event\\\",\\\"bold\\\":true,\\\"with\\\":[{\\\"translate\\\":\\\"item.um.demonomicon.example_page.recipe\\\",\\\"bold\\\":false,\\\"font\\\":\\\"um:demonomicon\\\"}]}}},{\\\"translate\\\":\\\"item.um.demonomicon.page.give_command_icon\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.example_page.give_command\\\"}}},{\\\"translate\\\":\\\"item.um.demonomicon.example_page.description\\\",\\\"color\\\":\\\"black\\\"}]}\',"
end_string = "]}\"}],\"name\": \"minecraft:written_book\"}]}]}"

# Create blank strings for indexes and pages
indexes = ""
pages = ""

#### Variables to set
# Number of entries per index page
entries_per_index = 36
entries_per_index_row = 6
# Number of extra "intro" pages at the start
extra_intro_pages = 2

# Figure out number of entries and indexes
num_entries = len(entries)
num_indexes = math.floor(num_entries / entries_per_index)
if num_entries % entries_per_index != 0 :
    num_indexes = num_indexes + 1


# Iterate through each entry, creating indexes
index_iteration = 0
no_icon_row = ""
icon_row = ""
for entry in entries :

    index_iteration = index_iteration + 1
    click_event_page = num_indexes + extra_intro_pages + index_iteration

    if index_iteration % entries_per_index == 1 :
        index_page = "\'[{\\\"translate\\\":\\\"item.um.demonomicon.index_page\\\",\\\"font\\\":\\\"um:demonomicon\\\",\\\"color\\\":\\\"white\\\",\\\"with\\\":[{\\\"translate\\\":\\\"item.um.demonomicon.index_page.title\\\",\\\"color\\\":\\\"black\\\",\\\"with\\\":["+ str(math.ceil(index_iteration / entries_per_index))+","+ str(num_indexes) +"]},"

    id = entry['id']
    try :
        title = entry['title']
    except :
        title = "item.um.demonomicon.entry." + id + ".title"
    no_icon_row = no_icon_row + "{\\\"translate\\\":\\\"item.um.demonomicon.index_page.spacer\\\",\\\"color\\\":\\\"white\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"change_page\\\",\\\"value\\\":\\\""+ str(click_event_page) +"\\\"},\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\""+ title +"\\\"}}},"
    icon_row = icon_row + "{\\\"translate\\\":\\\"item.um.demonomicon.entry."+ id +".icon\\\",\\\"color\\\":\\\"white\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"change_page\\\",\\\"value\\\":\\\""+ str(click_event_page) +"\\\"},\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\""+ title +"\\\"}}},"

    if index_iteration % entries_per_index_row == 0 :
        index_page = index_page + no_icon_row + icon_row
        no_icon_row = ""
        icon_row = ""
        if index_iteration % entries_per_index == 0 :
            index_page = index_page.rstrip(',') + "]}]\',"
            indexes = indexes + index_page

    if index_iteration == num_entries :
        if index_iteration % entries_per_index_row != 0 :
            for i in range(0,(entries_per_index_row - (index_iteration % entries_per_index_row))) :
                no_icon_row = no_icon_row + "{\\\"translate\\\":\\\"item.um.demonomicon.index_page.spacer\\\",\\\"color\\\":\\\"white\\\"},"
                icon_row = icon_row + "{\\\"translate\\\":\\\"item.um.demonomicon.index_page.empty_icon\\\",\\\"color\\\":\\\"white\\\"},"
            index_page = index_page + no_icon_row + icon_row
        index_page = index_page.rstrip(',') + "]}]\',"
        indexes = indexes + index_page





# Iterate through each entry, creating entry pages
iteration = 0
for entry in entries :
    # Add to the iteration variables
    iteration = iteration + 1

    # Get data from JSON file
    id = entry['id']
    try :
        title = entry['title']
    except :
        title = "item.um.demonomicon.entry." + id + ".title"
    try :
        recipe_type = str(entry['recipe_type'])
    except :
        recipe_type = "none"
    try :
        give_command = str(entry['give_command'])
    except :
        give_command = "none"

    # Make some new data based on "id"
    description = "item.um.demonomicon.entry." + id + ".description"
    icon = "item.um.demonomicon.entry." + id + ".icon"
    history = "item.um.demonomicon.entry." + id + ".history"
    contributors = "item.um.demonomicon.entry." + id + ".contributors"
    more_info = "item.um.demonomicon.entry." + id + ".more_info"
    recipe = "item.um.demonomicon.entry." + id + ".recipe"
    feature_link = "https://undermagic.com/features/" + id.replace("_","-")


    index_page_id = math.floor(iteration / entries_per_index)
    if iteration % entries_per_index != 0 :
        index_page_id = index_page_id + 1
    index_page_id = index_page_id + extra_intro_pages - 1
    with_icon = "{\\\"translate\\\":\\\"" + icon + "\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"" + title + "\\\"}}}"
    with_history = "{\\\"translate\\\":\\\"item.um.demonomicon.page.history_icon\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.page.history_icon.hover_event\\\",\\\"bold\\\":true,\\\"with\\\":[{\\\"translate\\\":\\\""+ history +"\\\",\\\"bold\\\":false,\\\"with\\\":[{\\\"translate\\\":\\\"item.um.demonomicon.version.beta_30\\\",\\\"color\\\":\\\"red\\\"},{\\\"translate\\\":\\\"item.um.demonomicon.version.beta_31\\\",\\\"color\\\":\\\"red\\\"},{\\\"translate\\\":\\\"item.um.demonomicon.version.beta_32\\\",\\\"color\\\":\\\"red\\\"},{\\\"translate\\\":\\\"item.um.demonomicon.version.beta_33\\\",\\\"color\\\":\\\"red\\\"},{\\\"translate\\\":\\\"item.um.demonomicon.version.beta_34\\\",\\\"color\\\":\\\"red\\\"},{\\\"translate\\\":\\\"item.um.demonomicon.version.beta_35\\\",\\\"color\\\":\\\"red\\\"},{\\\"translate\\\":\\\"item.um.demonomicon.version.beta_36\\\",\\\"color\\\":\\\"red\\\"},{\\\"translate\\\":\\\"item.um.demonomicon.version.beta_37\\\",\\\"color\\\":\\\"red\\\"}]}]}}}"

    with_contributors = "{\\\"translate\\\":\\\"item.um.demonomicon.page.contributors_icon\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.page.contributors_icon.hover_event\\\",\\\"bold\\\":true,\\\"with\\\":[{\\\"translate\\\":\\\""+ contributors +"\\\",\\\"bold\\\":false}]}}}"
    with_more_info = "{\\\"translate\\\":\\\"item.um.demonomicon.page.more_info_icon\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.page.more_info_icon.hover_event\\\",\\\"bold\\\":true,\\\"with\\\":[{\\\"translate\\\":\\\"" + more_info + "\\\",\\\"bold\\\":false}]}}}"

    if recipe_type == "crafting" :
        with_recipe = "{\\\"translate\\\":\\\"item.um.demonomicon.page.crafting_icon\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.page.crafting_icon.hover_event\\\",\\\"bold\\\":true,\\\"with\\\":[{\\\"translate\\\":\\\"" + recipe + "\\\",\\\"bold\\\":false,\\\"font\\\":\\\"um:demonomicon\\\"}]}}}"
    elif recipe_type == "location" :
        with_recipe = "{\\\"translate\\\":\\\"item.um.demonomicon.page.location_icon\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.page.location_icon.hover_event\\\",\\\"bold\\\":true,\\\"with\\\":[{\\\"translate\\\":\\\"" + recipe + "\\\",\\\"bold\\\":false,\\\"font\\\":\\\"um:demonomicon\\\"}]}}}"
    else :
        with_recipe = "{\\\"translate\\\":\\\"item.um.demonomicon.page.empty_icon\\\"}"

    if give_command != "none" :
        with_give_command = "{\\\"translate\\\":\\\"item.um.demonomicon.page.give_command_icon\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\""+ give_command +"\\\"},\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.page.give_command.hover_event\\\"}}}"
    else :
        with_give_command = "{\\\"translate\\\":\\\"item.um.demonomicon.page.empty_icon\\\"}"



    try :
        references = entry['references']
        with_references = ",\\\"with\\\":["
        for reference in references :
            reference_id = ids.index(reference) + extra_intro_pages + num_indexes + 1
            try :
                reference_title = entries[ids.index(reference)]['title']
            except :
                reference_title = "item.um.demonomicon.entry." + entries[ids.index(reference)]['id'] + ".title"
            with_reference = "{\\\"translate\\\":\\\"item.um.demonomicon.entry."+ id +".reference."+ str(references.index(reference)) +"\\\",\\\"color\\\":\\\"#56B6C2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"change_page\\\",\\\"value\\\":\\\""+ str(reference_id) +"\\\"},\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\""+ reference_title +"\\\"}}},"
            with_references = with_references + with_reference
        with_references = with_references.rstrip(',') + "]"
    except :
        with_references = ""


    with_description = "{\\\"translate\\\":\\\"" + description + "\\\",\\\"color\\\":\\\"black\\\""+ with_references +"}"

    with_back_button = "{\\\"translate\\\":\\\"item.um.demonomicon.page.arrow_button\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"change_page\\\",\\\"value\\\":\\\""+ str(index_page_id) +"\\\"}}"
#   with_link_button = "{\\\"translate\\\":\\\"item.um.demonomicon.page.arrow_button\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.page.feature_hover_event\\\"}},\\\"clickEvent\\\":{\\\"action\\\":\\\"open_url\\\",\\\"value\\\":\\\""+ feature_link + "\\\"}}"

    withs = with_icon + "," + with_history + "," + with_contributors + "," + with_more_info + "," + with_recipe + "," + with_give_command + "," + with_description + "," + with_back_button

    # Making the entry pages
    page_string = "\'{\\\"translate\\\":\\\"item.um.demonomicon.page\\\",\\\"color\\\":\\\"white\\\",\\\"font\\\":\\\"um:demonomicon\\\",\\\"with\\\":[" + withs + "]}\'"
    if iteration != num_entries :
        # Add commas if it isn't the last entry page
        page_string = page_string + ","

    # Append the entry page to the combined entry pages string
    pages = pages + page_string

#credits = "\'[{\\\"translate\\\":\\\"item.um.demonomicon.credits\\\",\\\"font\\\":\\\"um:demonomicon\\\",\\\"color\\\":\\\"black\\\",\\\"with\\\":[{\\\"translate\\\":\\\"item.um.demonomicon.page.arrow_button\\\",\\\"color\\\":\\\"white\\\",\\\"hoverEvent\\\":{\\\"action\\\":\\\"show_text\\\",\\\"value\\\":{\\\"translate\\\":\\\"item.um.demonomicon.page.developers_hover_event\\\"}},\\\"clickEvent\\\":{\\\"action\\\":\\\"open_url\\\",\\\"value\\\":\\\"https://undermagic.com/developers\\\"}}]}]\',"

# Combine everything into one mega string and shoving it into a file
final_string = (start_string + indexes + pages + end_string)
try :
    os.remove('demonomicon.json')
    print('\nOverwriting existing demonomicon.json...\n')
except :
    print('\nCreating new demonomicon.json...\n')
file_object = open('demonomicon.json', 'wt')
file_object.write(final_string)
file_object.close
print(final_string)

# Print out some nice values
print("Written to demonomicon.json in this folder. Please copy over to datapack!","\n\nNumber of Entries: ", num_entries, "\nNumber of Index Pages: ", num_indexes)