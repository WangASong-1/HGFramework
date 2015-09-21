--
-- Autogenerated by Thrift
--
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
-- @generated
--


require 'Thrift'
require 'guild_constants'

C2SGuildSign = __TObject:new{
  summonerId
}

function C2SGuildSign:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.summonerId = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SGuildSign:write(oprot)
  oprot:writeStructBegin('C2SGuildSign')
  if self.summonerId then
    oprot:writeFieldBegin('summonerId', TType.STRING, 1)
    oprot:writeString(self.summonerId)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CGuildSign = __TObject:new{
  curDonateCoin,
  curDayDonate,
  curWeekDonate
}

function S2CGuildSign:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I32 then
        self.curDonateCoin = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.I32 then
        self.curDayDonate = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.I32 then
        self.curWeekDonate = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CGuildSign:write(oprot)
  oprot:writeStructBegin('S2CGuildSign')
  if self.curDonateCoin then
    oprot:writeFieldBegin('curDonateCoin', TType.I32, 1)
    oprot:writeI32(self.curDonateCoin)
    oprot:writeFieldEnd()
  end
  if self.curDayDonate then
    oprot:writeFieldBegin('curDayDonate', TType.I32, 2)
    oprot:writeI32(self.curDayDonate)
    oprot:writeFieldEnd()
  end
  if self.curWeekDonate then
    oprot:writeFieldBegin('curWeekDonate', TType.I32, 3)
    oprot:writeI32(self.curWeekDonate)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SRequestGuildList = __TObject:new{

}

function C2SRequestGuildList:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SRequestGuildList:write(oprot)
  oprot:writeStructBegin('C2SRequestGuildList')
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CRequestGuildList = __TObject:new{
  guildList
}

function S2CRequestGuildList:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.LIST then
        self.guildList = {}
        local _etype3, _size0 = iprot:readListBegin()
        for _i=1,_size0 do
          local _elem4 = GuildBriefDTO:new{}
          _elem4:read(iprot)
          table.insert(self.guildList, _elem4)
        end
        iprot:readListEnd()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CRequestGuildList:write(oprot)
  oprot:writeStructBegin('S2CRequestGuildList')
  if self.guildList then
    oprot:writeFieldBegin('guildList', TType.LIST, 1)
    oprot:writeListBegin(TType.STRUCT, #self.guildList)
    for _,iter5 in ipairs(self.guildList) do
      iter5:write(oprot)
    end
    oprot:writeListEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SSearchGuild = __TObject:new{
  serialNum
}

function C2SSearchGuild:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.serialNum = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SSearchGuild:write(oprot)
  oprot:writeStructBegin('C2SSearchGuild')
  if self.serialNum then
    oprot:writeFieldBegin('serialNum', TType.STRING, 1)
    oprot:writeString(self.serialNum)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CSearchGuild = __TObject:new{
  guild
}

function S2CSearchGuild:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.guild = GuildBriefDTO:new{}
        self.guild:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CSearchGuild:write(oprot)
  oprot:writeStructBegin('S2CSearchGuild')
  if self.guild then
    oprot:writeFieldBegin('guild', TType.STRUCT, 1)
    self.guild:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SCreateGuild = __TObject:new{
  guildName,
  guildType
}

function C2SCreateGuild:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.guildName = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.I32 then
        self.guildType = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SCreateGuild:write(oprot)
  oprot:writeStructBegin('C2SCreateGuild')
  if self.guildName then
    oprot:writeFieldBegin('guildName', TType.STRING, 1)
    oprot:writeString(self.guildName)
    oprot:writeFieldEnd()
  end
  if self.guildType then
    oprot:writeFieldBegin('guildType', TType.I32, 2)
    oprot:writeI32(self.guildType)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CCreateGuild = __TObject:new{
  response,
  diamond,
  guildDetail
}

function S2CCreateGuild:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I32 then
        self.response = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.I32 then
        self.diamond = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.STRUCT then
        self.guildDetail = GuildDetailDTO:new{}
        self.guildDetail:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CCreateGuild:write(oprot)
  oprot:writeStructBegin('S2CCreateGuild')
  if self.response then
    oprot:writeFieldBegin('response', TType.I32, 1)
    oprot:writeI32(self.response)
    oprot:writeFieldEnd()
  end
  if self.diamond then
    oprot:writeFieldBegin('diamond', TType.I32, 2)
    oprot:writeI32(self.diamond)
    oprot:writeFieldEnd()
  end
  if self.guildDetail then
    oprot:writeFieldBegin('guildDetail', TType.STRUCT, 3)
    self.guildDetail:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

JoinInfoDTO = __TObject:new{
  summonerId,
  summonerName,
  summonerLevel,
  vipLvl,
  avatar,
  joinDate
}

function JoinInfoDTO:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.summonerId = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.summonerName = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.I32 then
        self.summonerLevel = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.I32 then
        self.vipLvl = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 5 then
      if ftype == TType.STRING then
        self.avatar = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 6 then
      if ftype == TType.STRING then
        self.joinDate = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function JoinInfoDTO:write(oprot)
  oprot:writeStructBegin('JoinInfoDTO')
  if self.summonerId then
    oprot:writeFieldBegin('summonerId', TType.STRING, 1)
    oprot:writeString(self.summonerId)
    oprot:writeFieldEnd()
  end
  if self.summonerName then
    oprot:writeFieldBegin('summonerName', TType.STRING, 2)
    oprot:writeString(self.summonerName)
    oprot:writeFieldEnd()
  end
  if self.summonerLevel then
    oprot:writeFieldBegin('summonerLevel', TType.I32, 3)
    oprot:writeI32(self.summonerLevel)
    oprot:writeFieldEnd()
  end
  if self.vipLvl then
    oprot:writeFieldBegin('vipLvl', TType.I32, 4)
    oprot:writeI32(self.vipLvl)
    oprot:writeFieldEnd()
  end
  if self.avatar then
    oprot:writeFieldBegin('avatar', TType.STRING, 5)
    oprot:writeString(self.avatar)
    oprot:writeFieldEnd()
  end
  if self.joinDate then
    oprot:writeFieldBegin('joinDate', TType.STRING, 6)
    oprot:writeString(self.joinDate)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SApplyGuild = __TObject:new{
  guildId
}

function C2SApplyGuild:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.guildId = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SApplyGuild:write(oprot)
  oprot:writeStructBegin('C2SApplyGuild')
  if self.guildId then
    oprot:writeFieldBegin('guildId', TType.STRING, 1)
    oprot:writeString(self.guildId)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CApplyGuild = __TObject:new{

}

function S2CApplyGuild:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CApplyGuild:write(oprot)
  oprot:writeStructBegin('S2CApplyGuild')
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CNewApplyInfo = __TObject:new{
  applyInfo
}

function S2CNewApplyInfo:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.applyInfo = JoinInfoDTO:new{}
        self.applyInfo:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CNewApplyInfo:write(oprot)
  oprot:writeStructBegin('S2CNewApplyInfo')
  if self.applyInfo then
    oprot:writeFieldBegin('applyInfo', TType.STRUCT, 1)
    self.applyInfo:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SJoinGuild = __TObject:new{
  guildId
}

function C2SJoinGuild:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.guildId = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SJoinGuild:write(oprot)
  oprot:writeStructBegin('C2SJoinGuild')
  if self.guildId then
    oprot:writeFieldBegin('guildId', TType.STRING, 1)
    oprot:writeString(self.guildId)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CJoinGuild = __TObject:new{
  response,
  guildDetail
}

function S2CJoinGuild:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I32 then
        self.response = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRUCT then
        self.guildDetail = GuildDetailDTO:new{}
        self.guildDetail:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CJoinGuild:write(oprot)
  oprot:writeStructBegin('S2CJoinGuild')
  if self.response then
    oprot:writeFieldBegin('response', TType.I32, 1)
    oprot:writeI32(self.response)
    oprot:writeFieldEnd()
  end
  if self.guildDetail then
    oprot:writeFieldBegin('guildDetail', TType.STRUCT, 2)
    self.guildDetail:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CNewJoinInfo = __TObject:new{
  joinInfo
}

function S2CNewJoinInfo:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.joinInfo = JoinInfoDTO:new{}
        self.joinInfo:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CNewJoinInfo:write(oprot)
  oprot:writeStructBegin('S2CNewJoinInfo')
  if self.joinInfo then
    oprot:writeFieldBegin('joinInfo', TType.STRUCT, 1)
    self.joinInfo:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SApprovalMember = __TObject:new{
  summonerId,
  isPass
}

function C2SApprovalMember:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.summonerId = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.BOOL then
        self.isPass = iprot:readBool()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SApprovalMember:write(oprot)
  oprot:writeStructBegin('C2SApprovalMember')
  if self.summonerId then
    oprot:writeFieldBegin('summonerId', TType.STRING, 1)
    oprot:writeString(self.summonerId)
    oprot:writeFieldEnd()
  end
  if self.isPass then
    oprot:writeFieldBegin('isPass', TType.BOOL, 2)
    oprot:writeBool(self.isPass)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CApprovalMember = __TObject:new{
  code,
  joinInfo,
  guildMemberDTO
}

function S2CApprovalMember:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I32 then
        self.code = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRUCT then
        self.joinInfo = JoinInfoDTO:new{}
        self.joinInfo:read(iprot)
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.STRUCT then
        self.guildMemberDTO = GuildMemberDTO:new{}
        self.guildMemberDTO:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CApprovalMember:write(oprot)
  oprot:writeStructBegin('S2CApprovalMember')
  if self.code then
    oprot:writeFieldBegin('code', TType.I32, 1)
    oprot:writeI32(self.code)
    oprot:writeFieldEnd()
  end
  if self.joinInfo then
    oprot:writeFieldBegin('joinInfo', TType.STRUCT, 2)
    self.joinInfo:write(oprot)
    oprot:writeFieldEnd()
  end
  if self.guildMemberDTO then
    oprot:writeFieldBegin('guildMemberDTO', TType.STRUCT, 3)
    self.guildMemberDTO:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CApprovalNotice = __TObject:new{
  guildInfo
}

function S2CApprovalNotice:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.guildInfo = GuildInfoDTO:new{}
        self.guildInfo:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CApprovalNotice:write(oprot)
  oprot:writeStructBegin('S2CApprovalNotice')
  if self.guildInfo then
    oprot:writeFieldBegin('guildInfo', TType.STRUCT, 1)
    self.guildInfo:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SQuitGuild = __TObject:new{

}

function C2SQuitGuild:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SQuitGuild:write(oprot)
  oprot:writeStructBegin('C2SQuitGuild')
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CQuitGuild = __TObject:new{
  cdSecond
}

function S2CQuitGuild:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I32 then
        self.cdSecond = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CQuitGuild:write(oprot)
  oprot:writeStructBegin('S2CQuitGuild')
  if self.cdSecond then
    oprot:writeFieldBegin('cdSecond', TType.I32, 1)
    oprot:writeI32(self.cdSecond)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SKickOutGuild = __TObject:new{
  summonerId
}

function C2SKickOutGuild:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.summonerId = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SKickOutGuild:write(oprot)
  oprot:writeStructBegin('C2SKickOutGuild')
  if self.summonerId then
    oprot:writeFieldBegin('summonerId', TType.STRING, 1)
    oprot:writeString(self.summonerId)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CKickOutGuild = __TObject:new{
  summonerId
}

function S2CKickOutGuild:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.summonerId = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CKickOutGuild:write(oprot)
  oprot:writeStructBegin('S2CKickOutGuild')
  if self.summonerId then
    oprot:writeFieldBegin('summonerId', TType.STRING, 1)
    oprot:writeString(self.summonerId)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CKickOutNotice = __TObject:new{
  isDissolution
}

function S2CKickOutNotice:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.BOOL then
        self.isDissolution = iprot:readBool()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CKickOutNotice:write(oprot)
  oprot:writeStructBegin('S2CKickOutNotice')
  if self.isDissolution then
    oprot:writeFieldBegin('isDissolution', TType.BOOL, 1)
    oprot:writeBool(self.isDissolution)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SPromoteToMaster = __TObject:new{
  summonerId
}

function C2SPromoteToMaster:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.summonerId = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SPromoteToMaster:write(oprot)
  oprot:writeStructBegin('C2SPromoteToMaster')
  if self.summonerId then
    oprot:writeFieldBegin('summonerId', TType.STRING, 1)
    oprot:writeString(self.summonerId)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CPromoteToMaster = __TObject:new{
  chairman,
  member
}

function S2CPromoteToMaster:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.chairman = GuildMemberDTO:new{}
        self.chairman:read(iprot)
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRUCT then
        self.member = GuildMemberDTO:new{}
        self.member:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CPromoteToMaster:write(oprot)
  oprot:writeStructBegin('S2CPromoteToMaster')
  if self.chairman then
    oprot:writeFieldBegin('chairman', TType.STRUCT, 1)
    self.chairman:write(oprot)
    oprot:writeFieldEnd()
  end
  if self.member then
    oprot:writeFieldBegin('member', TType.STRUCT, 2)
    self.member:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SApplyInfo = __TObject:new{

}

function C2SApplyInfo:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SApplyInfo:write(oprot)
  oprot:writeStructBegin('C2SApplyInfo')
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CApplyInfo = __TObject:new{
  applys
}

function S2CApplyInfo:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.LIST then
        self.applys = {}
        local _etype9, _size6 = iprot:readListBegin()
        for _i=1,_size6 do
          local _elem10 = JoinInfoDTO:new{}
          _elem10:read(iprot)
          table.insert(self.applys, _elem10)
        end
        iprot:readListEnd()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CApplyInfo:write(oprot)
  oprot:writeStructBegin('S2CApplyInfo')
  if self.applys then
    oprot:writeFieldBegin('applys', TType.LIST, 1)
    oprot:writeListBegin(TType.STRUCT, #self.applys)
    for _,iter11 in ipairs(self.applys) do
      iter11:write(oprot)
    end
    oprot:writeListEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SJoinInfo = __TObject:new{

}

function C2SJoinInfo:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SJoinInfo:write(oprot)
  oprot:writeStructBegin('C2SJoinInfo')
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CJoinInfo = __TObject:new{
  joinNotices
}

function S2CJoinInfo:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.LIST then
        self.joinNotices = {}
        local _etype15, _size12 = iprot:readListBegin()
        for _i=1,_size12 do
          local _elem16 = JoinInfoDTO:new{}
          _elem16:read(iprot)
          table.insert(self.joinNotices, _elem16)
        end
        iprot:readListEnd()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CJoinInfo:write(oprot)
  oprot:writeStructBegin('S2CJoinInfo')
  if self.joinNotices then
    oprot:writeFieldBegin('joinNotices', TType.LIST, 1)
    oprot:writeListBegin(TType.STRUCT, #self.joinNotices)
    for _,iter17 in ipairs(self.joinNotices) do
      iter17:write(oprot)
    end
    oprot:writeListEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SModifyDeclaration = __TObject:new{
  content
}

function C2SModifyDeclaration:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.content = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SModifyDeclaration:write(oprot)
  oprot:writeStructBegin('C2SModifyDeclaration')
  if self.content then
    oprot:writeFieldBegin('content', TType.STRING, 1)
    oprot:writeString(self.content)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CModifyDeclaration = __TObject:new{

}

function S2CModifyDeclaration:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CModifyDeclaration:write(oprot)
  oprot:writeStructBegin('S2CModifyDeclaration')
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SModifyAffiche = __TObject:new{
  content
}

function C2SModifyAffiche:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.content = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SModifyAffiche:write(oprot)
  oprot:writeStructBegin('C2SModifyAffiche')
  if self.content then
    oprot:writeFieldBegin('content', TType.STRING, 1)
    oprot:writeString(self.content)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CModifyAffiche = __TObject:new{

}

function S2CModifyAffiche:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CModifyAffiche:write(oprot)
  oprot:writeStructBegin('S2CModifyAffiche')
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SGuildSeting = __TObject:new{
  needVertify,
  levelLimit
}

function C2SGuildSeting:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.BOOL then
        self.needVertify = iprot:readBool()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.I32 then
        self.levelLimit = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SGuildSeting:write(oprot)
  oprot:writeStructBegin('C2SGuildSeting')
  if self.needVertify then
    oprot:writeFieldBegin('needVertify', TType.BOOL, 1)
    oprot:writeBool(self.needVertify)
    oprot:writeFieldEnd()
  end
  if self.levelLimit then
    oprot:writeFieldBegin('levelLimit', TType.I32, 2)
    oprot:writeI32(self.levelLimit)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CGuildSeting = __TObject:new{
  needVertify,
  levelLimit
}

function S2CGuildSeting:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.BOOL then
        self.needVertify = iprot:readBool()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.I32 then
        self.levelLimit = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CGuildSeting:write(oprot)
  oprot:writeStructBegin('S2CGuildSeting')
  if self.needVertify then
    oprot:writeFieldBegin('needVertify', TType.BOOL, 1)
    oprot:writeBool(self.needVertify)
    oprot:writeFieldEnd()
  end
  if self.levelLimit then
    oprot:writeFieldBegin('levelLimit', TType.I32, 2)
    oprot:writeI32(self.levelLimit)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SGuildDissolution = __TObject:new{

}

function C2SGuildDissolution:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SGuildDissolution:write(oprot)
  oprot:writeStructBegin('C2SGuildDissolution')
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CGuildDissolution = __TObject:new{

}

function S2CGuildDissolution:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CGuildDissolution:write(oprot)
  oprot:writeStructBegin('S2CGuildDissolution')
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SRequestGuildDetail = __TObject:new{
  guildId
}

function C2SRequestGuildDetail:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.guildId = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SRequestGuildDetail:write(oprot)
  oprot:writeStructBegin('C2SRequestGuildDetail')
  if self.guildId then
    oprot:writeFieldBegin('guildId', TType.STRING, 1)
    oprot:writeString(self.guildId)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CRequestGuildDetail = __TObject:new{
  guildDetail
}

function S2CRequestGuildDetail:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.guildDetail = GuildDetailDTO:new{}
        self.guildDetail:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CRequestGuildDetail:write(oprot)
  oprot:writeStructBegin('S2CRequestGuildDetail')
  if self.guildDetail then
    oprot:writeFieldBegin('guildDetail', TType.STRUCT, 1)
    self.guildDetail:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end