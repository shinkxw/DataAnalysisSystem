  #~ config = {'EDU_WZXT_MHXT_WZLM' => {'num' => 100,
                                     #~ 'ID' => Proc.new{|i| i},
                                     #~ 'SCHOOLID' => Proc.new{0},
                                     #~ 'WEBID' => Proc.new{1},
                                     #~ 'LMSHOWSTYLE' => Proc.new{0},
                                     #~ 'NAME' => Proc.new{'Ð£Ô°¶¯Ì¬'},
                                     #~ 'URL' => Proc.new{''},
                                     #~ 'IMAGEURL' => Proc.new{''},
                                     #~ 'DEPTH' => Proc.new{0},
                                     #~ 'PID' => Proc.new{0},
                                     #~ 'LISTSHOWSTYLE' => Proc.new{3},
                                     #~ 'ORDERTYPE' => Proc.new{1},
                                     #~ 'SHOWNUMBER' => Proc.new{10},
                                     #~ 'OPENFLAG' => Proc.new{1},
                                     #~ 'LLQX' => Proc.new{0},
                                     #~ 'PLSX' => Proc.new{|i| i}
                                     #~ }}
  #~ work_area.export_testdata(config)
  
  proc = Proc.new do |s|
    case s
    when 1286;11
    when 1370,1308;12
    when 1315,1305;14
    when 1290,1358;15
    when 1312;17
    when 1397;18
    when 1311;19
    when 1313;20
    when 1309;21
    when 1310;23
    when 1351,1352,1350,1349;25
    when 1360,1354,1356,1357;26
    when 1347,1348;27
    when 1353,1359;28
    when 1355;29
    when 1344,1324,1321;30
    when 1326;31
    when 1322,1323;32
    when 1345,1342;33
    when 1343;34
    when 1346;35
    when 1368,1367,1371;36
    when 1375,1378,1376,1377;38
    when 1301,1388,1387,1389;39
    when 1374;40
    when 1372;41
    when 1373;42
    when 1325;45
    when 1284;47
    when 1279;48
    when 1314;49
    when 1391;50
    when 1361,1363,1364,1365,1396;51
    when 1366,1362;52
    when 1379;57
    when 1380;58
    when 1327;64
    when 1328;65
    when 1329;66
    when 1330;67
    when 1331;68
    when 1332;69
    when 1390;70
    when 1316;72
    when 1317;73
    when 1318;74
    when 1319;75
    when 1320;76
    when 1392;77
    when 1393;78
    when 1394;79
    when 1395;80
    else p '!';999
    end
  end
  
  md = DBDataMigrate.new(db)
  md.get_table_info('EDU_WZXT_MHXT_WZWZ')
  config = { ID: { fn: 'ID', p: Proc.new{|s| s}},
             SCHOOLID: { fn: 'SCHOOLID', p: Proc.new{|s| s}},
             WEBID: { fn: 'WEBID', p: Proc.new{|s| s}},
             TYPENAME: { fn: 'TYPENAME', p: Proc.new{|s| s}},
             LMID: { fn: 'LMID', p: proc},
             TITLE: { fn: 'TITLE', p: Proc.new{|s| s}},
             PUBLISHERNAME: { fn: 'PUBLISHERNAME', p: Proc.new{|s| s}},
             AUTHOR: { fn: 'AUTHOR', p: Proc.new{|s| s}},
             AUTHORDEPART: { fn: 'AUTHORDEPART', p: Proc.new{|s| s}},
             PUBLISHDATE: { fn: 'PUBLISHDATE', p: 'datetime'},
             CONTENT: { fn: 'CONTENT', p: 'content_change'},
             URL: { fn: 'URL', p: Proc.new{|s| s}},
             IMAGEURL: { fn: 'IMAGEURL', p: Proc.new{|s| s}},
             ATTACHMENTNAME: { fn: 'ATTACHMENTNAME', p: Proc.new{|s| s}},
             ATTACHMENT: { fn: 'ATTACHMENT', p: Proc.new{|s| s}},
             CHICKNUB: { fn: 'CHICKNUB', p: Proc.new{|s| s}},
             AUDITSTATU: { fn: 'AUDITSTATU', p: Proc.new{|s| s}},
             AUDITOR: { fn: 'AUDITOR', p: Proc.new{|s| s}},
             AUDITORNAME: { fn: 'AUDITORNAME', p: Proc.new{|s| s}},
             AUDITTIME: { fn: 'AUDITTIME', p: 'datetime'},
             REMARK: { fn: 'REMARK', p: Proc.new{|s| s}},
             SUMMARY: { fn: 'SUMMARY', p: Proc.new{|s| s}},
             DISPLAYTYPE: { fn: 'DISPLAYTYPE', p: Proc.new{|s| s}},
             OPENFLAG: { fn: 'OPENFLAG', p: Proc.new{|s| s}},
             LLQX: { fn: 'LLQX', p: Proc.new{|s| s}}}
  md.insert_data('EDU_WZXT_MHXT_WZWZ', config, 30)