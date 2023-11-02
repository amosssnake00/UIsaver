---@type Mq
local mq = require('mq')

-- big thanks to kaen, aq1 for help and inspiration!
-- V 1.00
 
local windowlist = {
  'AAWindow',
  'AchievementsWnd',
  'ActionsAbilitiesPage',
  'ActionsCombatPage',
  'ActionsMainPage',
  'ActionsSocialsPage',
  'ActionsWindow',
  'ActorParticlesPage',
  'AdvancedDisplayOptionsWindow',
  'AdvancedLootWnd',
  'AdventureLeaderboardWnd',
  'AdventureRequestWnd',
  'AdventureStatsWnd',
  'AggroMeterWnd',
  'AlarmWnd',
  'AlertHistoryWnd',
  'AlertStackWnd',
  'AlertWnd',
  'AltStorageWnd',
  'AtlasPage',
  'AudioTriggersWindow',
  'AuraWindow',
  'BandolierWnd',
  'BarterMerchantWnd',
  'BarterSearchWnd',
  'BarterWnd',
  'BazaarConfirmationWnd',
  'BazaarSearchWnd',
  'BazaarWnd',
  'BigBankWnd',
  'BlockedBuffWnd',
  'BlockedPetBuffWnd',
  'BodyTintWnd',
  'BookWindow',
  'BreathWindow',
  'BuffWindow',
  'BugReportWindow',
  'CascadeCommandItemWnd',
  'CascadeSeparatorItemWnd',
  'CascadeSubWnd',
  'CascadeSubmenuItemWnd',
  'CascadeTopWnd',
  'CastSpellWnd',
  'CastingWindow',
  'ChatContainerWindow',
  'ChatWindow',
  'ClaimItemLayout',
  'ClaimWnd',
  'ColorPickerWnd',
  'CombatAbilityWnd',
  'CombatSkillSelectWnd',
  'CompassWindow',
  'CursorAttachment',
  'DragonHoardWnd',
  'DynamicZoneBottomWnd',
  'DynamicZoneTopWnd',
  'DynamicZoneWnd',
  'EQMainWnd',
  'EditLabelWnd',
  'EnvironmentParticlesPage',
  'EventCalendarWnd',
  'ExtendedTargetWnd',
  'FactionWnd',
  'FellowshipWnd',
  'FileSelectionWnd',
  'FindItemWnd',
  'FindLocationWnd',
  'FriendsWindow',
  'GemsGameWnd',
  'GiveWnd',
  'GroupInfoPage',
  'GroupListPage',
  'GroupSearchFiltersWnd',
  'GroupSearchWnd',
  'GroupWindow',
  'GuildBankWnd',
  'GuildCreationWnd',
  'GuildManagementWnd',
  'HelpWindow',
  'HeritageSelectionWnd',
  'HotButtonWnd',
  'HotButtonWnd10',
  'HotButtonWnd11',
  'HotButtonWnd2',
  'HotButtonWnd3',
  'HotButtonWnd4',
  'HotButtonWnd5',
  'HotButtonWnd6',
  'HotButtonWnd7',
  'HotButtonWnd8',
  'HotButtonWnd9',
  'IconSelectionWnd',
  'InspectWnd',
  'InventoriesPage',
  'InventoryWindow',
  'ItemExpTransferWnd',
  'ItemFuseWnd',
  'ItemOverflowWnd',
  'JournalCatWnd',
  'JournalNPCWnd',
  'KeyRingWnd',
  'LFGuildWnd',
  'LargeDialogWindow',
  'LayoutCopyWindow',
  'LoadskinWnd',
  'LootFiltersCopyWnd',
  'LootFiltersWnd',
  'LootSettingsWnd',
  'LootWnd',
  'MIW_InfoWnd',
  'MIZoneSelectWnd',
  'MMGW_ManageWnd',
  'MMTW_MerchantWnd',
  'MMTW_SelectionLayout',
  'MailAddressBookWindow',
  'MailCompositionWindow',
  'MailIgnoreListWindow',
  'MailWindow',
  'ManageLootWnd',
  'MapPage',
  'MapToolbarWnd',
  'MapViewWnd',
  'MarketplaceWnd',
  'MerchantWnd',
  'MusicPlayerWnd',
  'NameChangeMercWnd',
  'NameChangePetWnd',
  'NameChangeWnd',
  'NoteWindow',
  'ObjectPreviewWnd',
  'OptionsChatFilterPage',
  'OptionsDisplayPage',
  'OptionsGeneralPage',
  'OptionsKeyboardPage',
  'OptionsMailPage',
  'OptionsMousePage',
  'OptionsWindow',
  'OverseerWnd',
  'PetInfoWindow',
  'PetPetStatus',
  'PetPlayerStatus',
  'PlayerCustomizationWnd',
  'PlayerInfoPage',
  'PlayerListPage',
  'PlayerNotesWindow',
  'PlayerWindow',
  'ProgressionSelectionAbilitiesPane',
  'ProgressionSelectionEquipmentPane',
  'ProgressionSelectionInfoPane',
  'ProgressionSelectionListPane',
  'ProgressionSelectionStatsPane',
  'ProgressionSelectionWnd',
  'ProgressionTemplateDataListPane',
  'PurchaseGroupWnd',
  'PurchaseWnd',
  'PvPStatsWnd',
  'PvpLeaderboardWnd',
  'QuantityWnd',
  'RaceChangeWnd',
  'RaidOptionsWindow',
  'RaidWindow',
  'RealEstateItemsWnd',
  'RealEstateLayoutDetailsWnd',
  'RealEstateManageWnd',
  'RealEstateNeighborhoodWnd',
  'RealEstatePlotSearchWnd',
  'RealEstatePurchaseWnd',
  'RespawnWnd',
  'RewardPageTemplate',
  'RewardSelectionBottomPane',
  'RewardSelectionTopPane',
  'RewardSelectionWnd',
  'SelectorWindow',
  'SendMoneyWnd',
  'ServerListWnd',
  'ShortDurationBuffWindow',
  'SkillsSelectWindow',
  'SkillsWindow',
  'SocialEditWnd',
  'SpellBookWnd',
  'SpellParticlesPage',
  'StoryWnd',
  'TargetOfTargetWindow',
  'TargetWindow',
  'Target_BuffWindow',
  'TaskListPage',
  'TaskOverlayWnd',
  'TaskQuestHistoryPage',
  'TaskSelectWnd',
  'TaskSharedTaskPage',
  'TaskTemplateDataListPane',
  'TaskTemplateSelectAbilitiesPane',
  'TaskTemplateSelectDescriptionPane',
  'TaskTemplateSelectEquipmentPane',
  'TaskTemplateSelectListPane',
  'TaskTemplateSelectWnd',
  'TaskTemplateStatsPane',
  'TaskWnd',
  'TextEntryWnd',
  'TipWindow',
  'TitleWnd',
  'Title_PrefixPage',
  'Title_SuffixPage',
  'TrackingWnd',
  'TradeWnd',
  'TradeskillDepotWnd',
  'TradeskillWnd',
  'TrainWindow',
  'TributeBenefitWnd',
  'TributeMasterLowerPane',
  'TributeMasterUpperPane',
  'TributeMasterWnd',
  'TributeTrophyWnd',
  'VideoModesWindow',
  'VoiceMacroWnd',
  'VoteResultsWnd',
  'VoteWnd',
  'ZoneGuideWnd',
  'ZonePathWnd'
}

local OPTS = {
}

local windowlist_data = {}

local action = nil
local configfile = 'uisaver'
local config_scope = 'default'

local function fetch_window_data()
  for _, data in ipairs(windowlist) do
    table.insert(windowlist_data, {
      name = mq.TLO.Window(data).Name(),
      width = mq.TLO.Window(data).Width(),
      height = mq.TLO.Window(data).Height(),
      x = mq.TLO.Window(data).X(),
      y = mq.TLO.Window(data).Y(),
    })
  end
end

local function set_window_data()
  for _, data in ipairs(windowlist_data) do
    if (mq.TLO.Window(data.name).Width() ~= data.width) or (mq.TLO.Window(data.name).Height() ~= data.height) or (mq.TLO.Window(data.name).X() ~= data.x) or (mq.TLO.Window(data.name).Y() ~= data.y) then 
      --print('Restoring: ',data.name, data.x, data.y, data.width, data.height)
      mq.TLO.Window(data.name).Move(string.format('%s,%s,%s,%s', data.x, data.y, data.width, data.height))
      mq.delay(50)
    end
  end
end

local function read_config()

  local configData, err = loadfile(mq.configDir..'/uisaver/'..config_scope..'-'..configfile..".cfg")
  if err then
      print("File not found, are you sure you used the right setting?")
  elseif configData then
      windowlist_data = configData()
  end
end

local function save_config()
  mq.pickle('uisaver/'..config_scope..'-'..configfile..".cfg", windowlist_data)
  print('Saving config at MQ config dir/uisaver/',config_scope..'-'..configfile)
end

local function show_help()
  printf('UISaver')
  printf('Use:\n- /lua run uisaver [name of setting] save (opt: default)\n- /lua run uisaver [name of setting] restore (opt: default)\n   for verbose settings, enclose name of setting in quotes\n   i.e. /lua run uisaver \'this is just a test\' or use a continuous name\n   .cfg is added to filenames\n   if 3rd parameter (default) is omitted, settings are saved per char/server')
end

local function main_task()
  if action == 'save' then
    fetch_window_data()
    save_config()
  elseif action == 'restore' then
    read_config()
    set_window_data()
  end
end

local args = {...}
if not args[3] then
  config_scope = mq.TLO.EverQuest.Server()..'_'..mq.TLO.Me.CleanName()
elseif  args[3] == 'default' then
  config_scope = 'default'
else
  show_help()
  do return end
end
if not args[1] or (not args[2] or args[1] == 'help') then
  show_help()
  do return end
elseif args[2]:lower() == 'save' then
  action = 'save'
  configfile = args[1]:lower()
  main_task()
elseif args[2]:lower() == 'restore' then
  action = 'restore'
  configfile = args[1]:lower()
  main_task()
else
  printf('Unsupported command line option')
end
