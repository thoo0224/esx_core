---@class InventoryItem
---@field metadata table<string, any>
---@field label string
---@field name string
---@field slot number
---@field weight number
---@field count number
---@field stack boolean
---@field close boolean

---@alias AccountEnum
---|"bank"
---|"money"
---|"black_money"

---@class Account
---@field name AccountEnum
---@field label string
---@field money number
---@field index number
---@field round true

---@class Job
---@field name string
---@field label string
---@field grade number
---@field grade_label string
---@field grade_salary string

---@class ExtendedPlayer
---@field accounts Account[]
---@field coords vector3
---@field group string
---@field identifier string
---@field inventory InventoryItem[]
---@field job Job
---@field loadout table<string, any>
---@field name string
---@field playerId number
---@field source number
---@field variables table<string, any>
---@field weight number
---@field maxWeight number
---@field metadata table<string, any>
---@field admin boolean
---@field triggerEvent fun(eventName:string, ...)
---@field setCoords fun(coordinates:vector3)
---@field getCoords fun(vector:boolean):vector3
---@field kick fun(reason:string)
---@field setMoney fun(money:number)
---@field getMoney fun():number
---@field addMoney fun(money:number, reason:string)
---@field removeMoney fun(money:number, reason:string)
---@field getIdentifier fun():string
---@field setGroup fun(group:string)
---@field getGroup fun():string
---@field set fun(k:string, v:any)
---@field get fun(k:string):any
---@field getAccounts fun(minimal:boolean):table<string, number>
---@field getAccount fun(account:AccountEnum):number
---@field getInventory fun(minimal:boolean):InventoryItem[]
---@field getJob fun():Job
---@field getLoadout fun(minimal:boolean):table<string, any>
---@field getName fun():string
---@field setName fun(newName:string)
---@field setAccountMoney fun(accountName:string, money:number, reason:string)
---@field addAccountMoney fun(accountName:string, money:number, reason:string)
---@field removeAccountMoney fun(accountName:string, money:number, reason:string)
---@field getInventoryItem fun(itemName:string):InventoryItem
---@field addInventoryItem fun(itemName:string, count:number)
---@field removeInventoryItem fun(itemName:string, count:number)
---@field setInventoryItem fun(itemName:string, count:number)
---@field getWeight fun():number
---@field canCarryItem fun(itemName:string, count:number):boolean
---@field canSwapItem fun(firstItem:string, firstItemCount:number, testItem:string, testItemCount:number):boolean
---@field setMaxWeight fun(newWeight:number)
---@field setJob fun(newJob:string, grade:string)
---@field addWeapon fun(weaponName:string, ammo:number)
---@field addWeaponComponent fun(weaponName:string, weaponComponent:string)
---@field addWeaponAmmo fun(weaponName:string, ammoCount:number)
---@field updateWeaponAmmo fun(weaponName:string, ammoCount:number)
---@field setWeaponTint fun(weaponName:string, weaponTintIndex:number)
---@field getWeaponTint fun(weaponName:string):number
---@field removeWeapon fun(weaponName:string)
---@field removeWeaponComponent fun(weaponName:string, weaponComponent:string)
---@field removeWeaponAmmo fun(weaponName:string, ammoCount:number)
---@field hasWeaponComponent fun(weaponName:string, weaponComponent:string):boolean
---@field hasWeapon fun(weaponName:string):boolean
---@field hasItem fun(item:string):boolean
---@field getWeapon fun(weaponName:string):table<string, any>
---@field showNotification fun(msg:string, notifyType:number, length:number)
---@field showAdvancedNotification fun(sender:string, subject:string, msg:string, textureDict:string, iconType:number, flash:boolean, saveToBrief:boolean, hudColorIndex:number)
---@field showHelpNotification fun(msg:string, thisFrame:boolean, beep:boolean, duration:number)
---@field getMeta fun(index:string, subIndex:string):any
---@field setMeta fun(index:string, value:any, subValue:any)
---@field clearMeta fun(index:string, subValues:any)
