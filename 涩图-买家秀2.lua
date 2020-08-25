-- pix 动漫图
local api = require("coreApi")
local http = require("http")

function ReceiveFriendMsg(CurrentQQ, data)
    return 1
end

function ReceiveGroupMsg(CurrentQQ, data)
    if data.Content == '买家秀' then
       api.Api_SendMsg(
           CurrentQQ,
            {
              toUser = data.FromGroupId,
              sendToType = 2,
              sendMsgType = "PicMsg",
              content = "30s自动撤回",
              groupid = 0,
              atUser = 0,
              picUrl = "https://api.uomg.com/api/rand.img3",
              picBase64Buf = "",
              fileMd5 = ""
            }
       )
    end
    return 1
end

function ReceiveEvents(CurrentQQ, data, extData)
    return 1
end
