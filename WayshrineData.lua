local Utils = FasterTravel.Utils

local Data = {}

-- Hardcoded lookup of all fast travel nodes in all zones =( But at least it is automatically generated by WayshrineDataGenerator =D

local _zoneNodeLookup = {

	[2] = {
	{ poiIndex = 26, nodeIndex = 1 },
	{ poiIndex = 27, nodeIndex = 2 },
	{ poiIndex = 28, nodeIndex = 3 },
	{ poiIndex = 29, nodeIndex = 4 },
	{ poiIndex = 30, nodeIndex = 5 },
	{ poiIndex = 31, nodeIndex = 6 },
	{ poiIndex = 32, nodeIndex = 7 },
	{ poiIndex = 33, nodeIndex = 8 },
	{ poiIndex = 34, nodeIndex = 20 },
	{ poiIndex = 35, nodeIndex = 62 },
	{ poiIndex = 36, nodeIndex = 64 },
	{ poiIndex = 42, nodeIndex = 193 },
	{ poiIndex = 46, nodeIndex = 210 },
	{ poiIndex = 65, nodeIndex = 216 },
	{ poiIndex = 66, nodeIndex = 267 },
	{ poiIndex = 67, nodeIndex = 297 },
	{ poiIndex = 68, nodeIndex = 289 },
	{ poiIndex = 69, nodeIndex = 292 },
	{ poiIndex = 70, nodeIndex = 342 },
	},

	[4] = {
	{ poiIndex = 20, nodeIndex = 189 },
	{ poiIndex = 22, nodeIndex = 14 },
	{ poiIndex = 23, nodeIndex = 15 },
	{ poiIndex = 24, nodeIndex = 16 },
	{ poiIndex = 25, nodeIndex = 22 },
	{ poiIndex = 26, nodeIndex = 23 },
	{ poiIndex = 27, nodeIndex = 18 },
	{ poiIndex = 28, nodeIndex = 19 },
	{ poiIndex = 35, nodeIndex = 31 },
	{ poiIndex = 42, nodeIndex = 56 },
	{ poiIndex = 43, nodeIndex = 17 },
	{ poiIndex = 62, nodeIndex = 263 },
	{ poiIndex = 64, nodeIndex = 318 },
	{ poiIndex = 65, nodeIndex = 302 },
	},

	[5] = {
	{ poiIndex = 17, nodeIndex = 190 },
	{ poiIndex = 18, nodeIndex = 9 },
	{ poiIndex = 19, nodeIndex = 10 },
	{ poiIndex = 20, nodeIndex = 11 },
	{ poiIndex = 22, nodeIndex = 12 },
	{ poiIndex = 23, nodeIndex = 13 },
	{ poiIndex = 24, nodeIndex = 82 },
	{ poiIndex = 25, nodeIndex = 83 },
	{ poiIndex = 26, nodeIndex = 84 },
	{ poiIndex = 27, nodeIndex = 55 },
	{ poiIndex = 37, nodeIndex = 86 },
	{ poiIndex = 41, nodeIndex = 208 },
	{ poiIndex = 58, nodeIndex = 269 },
	{ poiIndex = 59, nodeIndex = 307 },
	},

	[9] = {
	{ poiIndex = 20, nodeIndex = 65 },
	{ poiIndex = 21, nodeIndex = 66 },
	{ poiIndex = 22, nodeIndex = 41 },
	{ poiIndex = 23, nodeIndex = 67 },
	{ poiIndex = 24, nodeIndex = 68 },
	{ poiIndex = 25, nodeIndex = 71 },
	{ poiIndex = 26, nodeIndex = 72 },
	{ poiIndex = 27, nodeIndex = 73 },
	{ poiIndex = 28, nodeIndex = 74 },
	{ poiIndex = 29, nodeIndex = 75 },
	{ poiIndex = 30, nodeIndex = 76 },
	{ poiIndex = 31, nodeIndex = 77 },
	{ poiIndex = 34, nodeIndex = 98 },
	{ poiIndex = 39, nodeIndex = 69 },
	{ poiIndex = 40, nodeIndex = 108 },
	{ poiIndex = 46, nodeIndex = 212 },
	{ poiIndex = 66, nodeIndex = 266 },
	{ poiIndex = 67, nodeIndex = 298 },
	{ poiIndex = 68, nodeIndex = 290 },
	{ poiIndex = 69, nodeIndex = 293 },
	},

	[10] = {
	{ poiIndex = 60, nodeIndex = 198 },
	{ poiIndex = 22, nodeIndex = 24 },
	{ poiIndex = 23, nodeIndex = 25 },
	{ poiIndex = 24, nodeIndex = 26 },
	{ poiIndex = 25, nodeIndex = 27 },
	{ poiIndex = 26, nodeIndex = 28 },
	{ poiIndex = 27, nodeIndex = 29 },
	{ poiIndex = 28, nodeIndex = 30 },
	{ poiIndex = 29, nodeIndex = 32 },
	{ poiIndex = 30, nodeIndex = 79 },
	{ poiIndex = 31, nodeIndex = 80 },
	{ poiIndex = 32, nodeIndex = 81 },
	{ poiIndex = 43, nodeIndex = 205 },
	{ poiIndex = 60, nodeIndex = 198 },
	{ poiIndex = 61, nodeIndex = 319 },
	{ poiIndex = 62, nodeIndex = 308 },
	{ poiIndex = 63, nodeIndex = 287 },
	},

	[11] = {
	{ poiIndex = 2,nodeIndex = 101 },
	{ poiIndex = 3,nodeIndex = 99 },
	{ poiIndex = 4,nodeIndex = 102 },
	{ poiIndex = 5,nodeIndex = 100 },
	{ poiIndex = 6,nodeIndex = 104 },
	{ poiIndex = 7,nodeIndex = 105 },
	{ poiIndex = 8,nodeIndex = 106 },
	{ poiIndex = 9,nodeIndex = 103 },
	{ poiIndex = 10, nodeIndex = 107 },
	{ poiIndex = 41, nodeIndex = 188 },
	{ poiIndex = 60, nodeIndex = 294 },
	{ poiIndex = 61, nodeIndex = 299 },
	},

	[14] = {
	{ poiIndex = 19, nodeIndex = 33 },
	{ poiIndex = 20, nodeIndex = 34 },
	{ poiIndex = 21, nodeIndex = 35 },
	{ poiIndex = 22, nodeIndex = 36 },
	{ poiIndex = 23, nodeIndex = 37 },
	{ poiIndex = 24, nodeIndex = 38 },
	{ poiIndex = 25, nodeIndex = 39 },
	{ poiIndex = 26, nodeIndex = 40 },
	{ poiIndex = 27, nodeIndex = 63 },
	{ poiIndex = 36, nodeIndex = 186 },
	{ poiIndex = 40, nodeIndex = 204 },
	{ poiIndex = 41, nodeIndex = 206 },
	{ poiIndex = 61, nodeIndex = 323 },
	{ poiIndex = 62, nodeIndex = 313 },
	{ poiIndex = 63, nodeIndex = 303 },
	},

	[15] = {
	{ poiIndex = 14, nodeIndex = 87 },
	{ poiIndex = 15, nodeIndex = 88 },
	{ poiIndex = 16, nodeIndex = 89 },
	{ poiIndex = 17, nodeIndex = 90 },
	{ poiIndex = 18, nodeIndex = 91 },
	{ poiIndex = 19, nodeIndex = 92 },
	{ poiIndex = 20, nodeIndex = 93 },
	{ poiIndex = 21, nodeIndex = 94 },
	{ poiIndex = 22, nodeIndex = 95 },
	{ poiIndex = 23, nodeIndex = 96 },
	{ poiIndex = 24, nodeIndex = 97 },
	{ poiIndex = 41, nodeIndex = 195 },
	{ poiIndex = 58, nodeIndex = 312 },
	},

	[16] = {
	{ poiIndex = 14, nodeIndex = 109 },
	{ poiIndex = 15, nodeIndex = 110 },
	{ poiIndex = 16, nodeIndex = 111 },
	{ poiIndex = 17, nodeIndex = 112 },
	{ poiIndex = 23, nodeIndex = 113 },
	{ poiIndex = 24, nodeIndex = 114 },
	{ poiIndex = 25, nodeIndex = 115 },
	{ poiIndex = 26, nodeIndex = 116 },
	{ poiIndex = 27, nodeIndex = 117 },
	{ poiIndex = 28, nodeIndex = 118 },
	{ poiIndex = 29, nodeIndex = 119 },
	{ poiIndex = 30, nodeIndex = 120 },
	{ poiIndex = 42, nodeIndex = 187 },
	{ poiIndex = 61, nodeIndex = 322 },
	{ poiIndex = 62, nodeIndex = 301 },
	{ poiIndex = 63, nodeIndex = 372 },
	},

	[17] = {
	{ poiIndex = 17, nodeIndex = 42 },
	{ poiIndex = 18, nodeIndex = 43 },
	{ poiIndex = 19, nodeIndex = 44 },
	{ poiIndex = 20, nodeIndex = 45 },
	{ poiIndex = 21, nodeIndex = 46 },
	{ poiIndex = 29, nodeIndex = 57 },
	{ poiIndex = 30, nodeIndex = 58 },
	{ poiIndex = 31, nodeIndex = 59 },
	{ poiIndex = 32, nodeIndex = 137 },
	{ poiIndex = 34, nodeIndex = 60 },
	{ poiIndex = 35, nodeIndex = 61 },
	{ poiIndex = 42, nodeIndex = 196 },
	{ poiIndex = 43, nodeIndex = 155 },
	{ poiIndex = 62, nodeIndex = 286 },
	{ poiIndex = 63, nodeIndex = 314 },
	},

	[18] = {
	{ poiIndex = 21, nodeIndex = 150 },
	{ poiIndex = 17, nodeIndex = 147 },
	{ poiIndex = 18, nodeIndex = 143 },
	{ poiIndex = 19, nodeIndex = 148 },
	{ poiIndex = 20, nodeIndex = 149 },
	{ poiIndex = 21, nodeIndex = 150 },
	{ poiIndex = 22, nodeIndex = 151 },
	{ poiIndex = 23, nodeIndex = 152 },
	{ poiIndex = 24, nodeIndex = 153 },
	{ poiIndex = 25, nodeIndex = 154 },
	{ poiIndex = 39, nodeIndex = 197 },
	{ poiIndex = 58, nodeIndex = 268 },
	{ poiIndex = 59, nodeIndex = 304 },
	{ poiIndex = 60, nodeIndex = 306 },
	},

	[19] = {
	{ poiIndex = 20, nodeIndex = 47 },
	{ poiIndex = 21, nodeIndex = 48 },
	{ poiIndex = 22, nodeIndex = 49 },
	{ poiIndex = 23, nodeIndex = 171 },
	{ poiIndex = 24, nodeIndex = 50 },
	{ poiIndex = 26, nodeIndex = 51 },
	{ poiIndex = 27, nodeIndex = 52 },
	{ poiIndex = 28, nodeIndex = 53 },
	{ poiIndex = 30, nodeIndex = 78 },
	{ poiIndex = 31, nodeIndex = 85 },
	{ poiIndex = 39, nodeIndex = 192 },
	{ poiIndex = 61, nodeIndex = 261 },
	{ poiIndex = 62, nodeIndex = 260 },
	{ poiIndex = 63, nodeIndex = 316 },
	{ poiIndex = 64, nodeIndex = 305 },
	},

	[37] = {
	{ poiIndex = 54, nodeIndex = 200 },
	{ poiIndex = 55, nodeIndex = 201 },
	{ poiIndex = 56, nodeIndex = 202 },
	{ poiIndex = 57, nodeIndex = 203 },
	{ poiIndex = 104,nodeIndex = 236 },
	{ poiIndex = 105,nodeIndex = 247 },
	},

	[99] = {
	{ poiIndex = 1,nodeIndex = 215 },
	},

	[109] = {
	{ poiIndex = 3,nodeIndex = 172 },
	},

	[110] = {
	{ poiIndex = 2,nodeIndex = 173 },
	{ poiIndex = 3,nodeIndex = 125 },
	{ poiIndex = 4,nodeIndex = 126 },
	{ poiIndex = 9,nodeIndex = 295 },
	},

	[154] = {
	{ poiIndex = 5,nodeIndex = 128 },
	{ poiIndex = 6,nodeIndex = 129 },
	{ poiIndex = 7,nodeIndex = 130 },
	{ poiIndex = 8,nodeIndex = 131 },
	{ poiIndex = 9,nodeIndex = 132 },
	{ poiIndex = 10, nodeIndex = 133 },
	{ poiIndex = 11, nodeIndex = 134 },
	{ poiIndex = 12, nodeIndex = 135 },
	{ poiIndex = 13, nodeIndex = 136 },
	{ poiIndex = 14, nodeIndex = 139 },
	{ poiIndex = 15, nodeIndex = 140 },
	{ poiIndex = 27, nodeIndex = 145 },
	{ poiIndex = 29, nodeIndex = 146 },
	{ poiIndex = 39, nodeIndex = 184 },
	{ poiIndex = 57, nodeIndex = 344 },
	},

	[178] = {
	{ poiIndex = 20, nodeIndex = 177 },
	{ poiIndex = 23, nodeIndex = 178 },
	{ poiIndex = 24, nodeIndex = 174 },
	{ poiIndex = 25, nodeIndex = 175 },
	{ poiIndex = 26, nodeIndex = 176 },
	{ poiIndex = 27, nodeIndex = 121 },
	{ poiIndex = 28, nodeIndex = 122 },
	{ poiIndex = 29, nodeIndex = 123 },
	{ poiIndex = 30, nodeIndex = 124 },
	{ poiIndex = 33, nodeIndex = 127 },
	{ poiIndex = 41, nodeIndex = 194 },
	{ poiIndex = 42, nodeIndex = 211 },
	{ poiIndex = 61, nodeIndex = 262 },
	{ poiIndex = 62, nodeIndex = 285 },
	{ poiIndex = 63, nodeIndex = 288 },
	{ poiIndex = 64, nodeIndex = 315 },
	},

	[179] = {
	{ poiIndex = 29, nodeIndex = 185 },
	{ poiIndex = 30, nodeIndex = 144 },
	{ poiIndex = 31, nodeIndex = 156 },
	{ poiIndex = 32, nodeIndex = 157 },
	{ poiIndex = 34, nodeIndex = 158 },
	{ poiIndex = 35, nodeIndex = 159 },
	{ poiIndex = 36, nodeIndex = 160 },
	{ poiIndex = 37, nodeIndex = 161 },
	{ poiIndex = 38, nodeIndex = 162 },
	{ poiIndex = 39, nodeIndex = 163 },
	{ poiIndex = 58, nodeIndex = 291 },
	{ poiIndex = 59, nodeIndex = 320 },
	{ poiIndex = 60, nodeIndex = 321 },
	{ poiIndex = 61, nodeIndex = 311 },
	},

	[180] = {
	{ poiIndex = 8,nodeIndex = 191 },
	{ poiIndex = 15, nodeIndex = 214 },
	{ poiIndex = 16, nodeIndex = 164 },
	{ poiIndex = 17, nodeIndex = 21 },
	{ poiIndex = 18, nodeIndex = 165 },
	{ poiIndex = 19, nodeIndex = 166 },
	{ poiIndex = 20, nodeIndex = 167 },
	{ poiIndex = 21, nodeIndex = 168 },
	{ poiIndex = 22, nodeIndex = 169 },
	{ poiIndex = 40, nodeIndex = 207 },
	{ poiIndex = 41, nodeIndex = 213 },
	{ poiIndex = 58, nodeIndex = 265 },
	{ poiIndex = 59, nodeIndex = 317 },
	{ poiIndex = 60, nodeIndex = 296 },
	{ poiIndex = 61, nodeIndex = 325 },
	},

	[299] = {
	{ poiIndex = 4,nodeIndex = 138 },
	{ poiIndex = 6,nodeIndex = 179 },
	{ poiIndex = 7,nodeIndex = 180 },
	{ poiIndex = 11, nodeIndex = 324 },
	},

	[300] = {
	{ poiIndex = 3,nodeIndex = 181 },
	{ poiIndex = 4,nodeIndex = 182 },
	{ poiIndex = 5,nodeIndex = 183 },
	},

	[301] = {
	{ poiIndex = 5,  nodeIndex = 141 },
	{ poiIndex = 6,  nodeIndex = 142 },
	{ poiIndex = 17, nodeIndex = 300 },
	},

	[374] = {
	{ poiIndex = 34, nodeIndex = 243 },
	{ poiIndex = 35, nodeIndex = 242 },
	{ poiIndex = 36, nodeIndex = 245 },
	{ poiIndex = 37, nodeIndex = 244 },
	{ poiIndex = 38, nodeIndex = 237 },
	{ poiIndex = 39, nodeIndex = 241 },
	{ poiIndex = 40, nodeIndex = 239 },
	{ poiIndex = 41, nodeIndex = 238 },
	{ poiIndex = 42, nodeIndex = 240 },
	{ poiIndex = 54, nodeIndex = 246 },
	{ poiIndex = 58, nodeIndex = 348 },
	},

	[468] = {
	{ poiIndex = 14, nodeIndex = 255 },
	{ poiIndex = 15, nodeIndex = 256 },
	{ poiIndex = 16, nodeIndex = 257 },
	{ poiIndex = 25, nodeIndex = 361 },
	},

	[474] = {
	{ poiIndex = 1,nodeIndex = 251 },
	{ poiIndex = 2,nodeIndex = 252 },
	{ poiIndex = 3,nodeIndex = 253 },
	{ poiIndex = 4,nodeIndex = 254 },
	{ poiIndex = 23, nodeIndex = 343 },
	{ poiIndex = 24, nodeIndex = 362 },
	},

	[493] = {
	{ poiIndex = 9,nodeIndex = 329 },
	{ poiIndex = 12, nodeIndex = 331 },
	{ poiIndex = 13, nodeIndex = 330 },
	{ poiIndex = 22, nodeIndex = 273 },
	{ poiIndex = 23, nodeIndex = 274 },
	{ poiIndex = 24, nodeIndex = 275 },
	{ poiIndex = 25, nodeIndex = 272 },
	{ poiIndex = 26, nodeIndex = 276 },
	{ poiIndex = 27, nodeIndex = 277 },
	{ poiIndex = 28, nodeIndex = 278 },
	{ poiIndex = 29, nodeIndex = 284 },
	{ poiIndex = 30, nodeIndex = 279 },
	{ poiIndex = 31, nodeIndex = 280 },
	{ poiIndex = 32, nodeIndex = 281 },
	{ poiIndex = 36, nodeIndex = 333 },
	{ poiIndex = 37, nodeIndex = 334 },
	{ poiIndex = 38, nodeIndex = 335 },
	{ poiIndex = 68, nodeIndex = 336 },
	{ poiIndex = 72, nodeIndex = 282 },
	{ poiIndex = 85, nodeIndex = 328 },
	},

	[526] = {
	{ poiIndex = 11, nodeIndex = 270 },
	{ poiIndex = 31, nodeIndex = 230 },
	{ poiIndex = 32, nodeIndex = 231 },
	{ poiIndex = 33, nodeIndex = 232 },
	{ poiIndex = 61, nodeIndex = 217 },
	{ poiIndex = 62, nodeIndex = 219 },
	{ poiIndex = 63, nodeIndex = 218 },
	{ poiIndex = 64, nodeIndex = 220 },
	{ poiIndex = 65, nodeIndex = 229 },
	{ poiIndex = 66, nodeIndex = 225 },
	{ poiIndex = 67, nodeIndex = 226 },
	{ poiIndex = 68, nodeIndex = 227 },
	{ poiIndex = 69, nodeIndex = 233 },
	{ poiIndex = 70, nodeIndex = 234 },
	{ poiIndex = 71, nodeIndex = 235 },
	{ poiIndex = 72, nodeIndex = 310 },
	{ poiIndex = 73, nodeIndex = 327 },
	{ poiIndex = 74, nodeIndex = 326 },
	{ poiIndex = 75, nodeIndex = 332 },
	{ poiIndex = 76, nodeIndex = 345 },
	},

	[618] = {
	{ poiIndex = 4,nodeIndex = 338 },
	{ poiIndex = 5,nodeIndex = 339 },
	{ poiIndex = 8,nodeIndex = 347 },
	{ poiIndex = 18, nodeIndex = 340 },
	},

	[619] = {
	{ poiIndex = 2,nodeIndex = 337 },
	},

	[642] = {
	{ poiIndex = 1,nodeIndex = 349 },
	{ poiIndex = 2,nodeIndex = 350 },
	{ poiIndex = 3,nodeIndex = 351 },
	{ poiIndex = 4,nodeIndex = 352 },
	{ poiIndex = 5,nodeIndex = 353 },
	{ poiIndex = 6,nodeIndex = 354 },
	{ poiIndex = 41, nodeIndex = 355 },
	{ poiIndex = 42, nodeIndex = 356 },
	{ poiIndex = 43, nodeIndex = 357 },
	{ poiIndex = 45, nodeIndex = 358 },
	{ poiIndex = 47, nodeIndex = 359 },
	{ poiIndex = 54, nodeIndex = 364 },
	{ poiIndex = 55, nodeIndex = 365 },
	{ poiIndex = 57, nodeIndex = 369 },
	{ poiIndex = 59, nodeIndex = 366 },
	{ poiIndex = 60, nodeIndex = 367 },
	{ poiIndex = 61, nodeIndex = 368 },
	},

	[658] = {
	{ poiIndex = 3,nodeIndex = 360 },
	{ poiIndex = 6,nodeIndex = 373 },
	},

	[341]  = {
	{ poiIndex = 31, nodeIndex = 236 },
	},

	[-2147483648]  = { },

}

-- cache for formatted wayshrine names
local _nodeNameCache = {}

local function GetNodeName(nodeIndex,name)
	local localeName = _nodeNameCache[nodeIndex]

	if localeName == nil then
		localeName = Utils.FormatStringCurrentLanguage(name)
		_nodeNameCache[nodeIndex] = localeName
	end

	return localeName
end

local function GetNodesByZoneIndex(zoneIndex)
	if zoneIndex ~= nil then
		local nodes = _zoneNodeLookup[zoneIndex]
		if nodes ~= nil then
			return Utils.copy(nodes)
		end
	end
	return {}
end



local function GetNodeInfo(nodeIndex)
	if nodeIndex == nil then return nil end

	local known,name,normalizedX, normalizedY, textureName ,textureName,poiType,isShown = GetFastTravelNodeInfo(nodeIndex)

	name = GetNodeName(nodeIndex,name)

	return known,name,normalizedX, normalizedY, textureName ,textureName,poiType,isShown
end

local d = Data

d.GetNodesByZoneIndex = GetNodesByZoneIndex
d.GetNodeInfo = GetNodeInfo

FasterTravel.Wayshrine.Data = d