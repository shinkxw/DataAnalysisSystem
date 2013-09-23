#!/usr/bin/env ruby -w
# encoding: GBK
#模板数据生成器
class TemplateBuilder
  attr_reader :area#待生成的元数据
  attr_reader :template_str#生成的模板语句
  attr_reader :ignore_name_space_arr#不需要生成模板的命名空间
  attr_accessor :tab#缩进
  #初始化
  def initialize(tab = "    ",log = Log.new)
    @area = nil
    @file_hash = nil
    @tab = Indent.new(tab)
    @app_name = "JWXT"
    @directory_name = "jpxt"
    @ignore_name_space_arr = %w(EDU_GB EDU_JY EDU_ZJ EDU_ZZ)
    @bztable_hash = { gb: 'GB', jy: 'JB', zz: 'ZZB', zj: 'ZJ'}
    @log = log
  end
  #生成模板数据
  def build(area)
    @area = area
    @file_hash = {}
    @area.each do |name_space|
      build_name_space_template(name_space) unless @ignore_name_space_arr.include?(name_space.name)
    end
    MDDoc.new("template",@area.name,@file_hash)
  end
  #生成指定命名空间的模板
  def build_name_space_template(name_space)
    name_space.each do |table|
      @tab.to_0
      @file_hash["Controllers/#{table.library_name.upcase}/#{table.lname}Controller.cs"] = make_controller(table)
      @file_hash["Views/#{table.library_name.upcase}/#{table.lname}/Index.cshtml"] = make_index(table)
      @file_hash["Views/#{table.library_name.upcase}/#{table.lname}/Create.cshtml"] = make_table_info(table,'添加')
      @file_hash["Views/#{table.library_name.upcase}/#{table.lname}/Edit.cshtml"] = make_table_info(table,'编辑')
    end
  end
  def make_controller(table)
    str = "using System;\nusing System.Collections.Generic;\nusing System.Linq;\nusing System.Web;\n"
    str << "using System.Web.Mvc;\nusing System.Data;\nusing System.Data.Entity;\nusing System.Collections;\n"
    str << "using HanRuEdu.LDAL;\nusing System.Text;\nusing System.Data.Entity.Validation;\nusing HanRuEdu.#{@app_name}.Common;\n\n"
    str << "namespace HanRuEdu.#{@app_name}.Controllers.#{@app_name}\n"
    str << "{\n#{@tab.l}public class #{table.name.split("_")[-1]}Controller : #{@app_name}Controller\n#{@tab.t}"
    str << make_controller_index_jsonstr(table)
    str << make_controller_add(table)
    str << make_controller_upd(table)
    str << make_controller_InitViewBag(table)
    str << make_controller_index(table)
    str << make_controller_create(table)
    str << make_controller_edit(table)
    str << make_controller_delete(table,false)
    str << make_controller_delete(table,true)
    str << make_controller_get_max_ID(table)
    str << "#{@tab.s}}\n}"
  end
  def make_controller_index_jsonstr(table)
    str = "{\n#{@tab.l}public string index_jsonstr(string searchkey = \"\", string sort = \"\", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = \"desc\")\n#{@tab.t}"
    str << "{\n#{@tab.l}List<VIEW_#{table.name}_DISP> model = db_#{table.library_name}.VIEW_#{table.name}_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();\n#{@tab.t}if (!String.IsNullOrEmpty(searchkey))\n#{@tab.t}"
    str << "{\n#{@tab.l}//model = model.Where(e => e.#{table.get_first_field_name}.Contains(searchkey)).ToList();\n"
    str << "#{@tab.s}}\n\n#{@tab.t}if (!String.IsNullOrEmpty(sort))\n#{@tab.t}"
    str << "{\n#{@tab.l}if (order.Equals(\"desc\"))\n#{@tab.t}"
    str << "{\n#{@tab.l}model = model.OrderBy(e => GetPropertyValue(e, sort)).ToList();\n"
    str << "#{@tab.s}}\n#{@tab.t}else\n#{@tab.t}"
    str << "{\n#{@tab.l}model = model.OrderByDescending(e => GetPropertyValue(e, sort)).ToList();\n"
    str << "#{@tab.s}}\n"
    str << %(#{@tab.s}}\n#{@tab.t}return \"{\\"total\\":" + model.Count + ",\\"rows\\":" + HanRuEdu.Utils.JsonHelp.JsonSerialize(model.Skip(page * rows - rows).Take(rows).ToList()) + "}";\n)
    str << "#{@tab.s}}\n\n"
  end
  def make_controller_add(table)
    str = "#{@tab.t}public void Add#{table.lname.capitalize}(#{table.name} #{table.lname_dc})\n#{@tab.t}"
    str << "{\n#{@tab.l}#{table.lname_dc}.SCHOOLID = CurUser.ele01Usr.SCHOOLID;\n#{@tab.t}Upd#{table.lname.capitalize}(#{table.lname_dc});\n"
    str << "#{@tab.s}}\n\n"
  end
  def make_controller_upd(table)
    str = "#{@tab.t}public void Upd#{table.lname.capitalize}(#{table.name} #{table.lname_dc})\n#{@tab.t}"
    str << "{\n#{@tab.l}//设置默认值\n"
    table.each_field do |field|
      if field.split_type[0] == "String"
        str << "#{@tab.t}if (string.IsNullOrEmpty(#{table.lname_dc}.#{field.name})) #{table.lname_dc}.#{field.name} = \"\";//#{field.explanation}#{get_relation(field)}\n"
      else
        str << "#{@tab.t}if (#{table.lname_dc}.#{field.name} == 0) #{table.lname_dc}.#{field.name} = 0;//#{field.explanation}#{get_relation(field)}\n"
      end
    end
    str << "#{@tab.t}#{table.name} #{table.lname_dc}_model = db_#{table.library_name}.#{table.name}.FirstOrDefault(e => e.#{table.get_first_field_name} == #{table.lname_dc}.#{table.get_first_field_name}\n"
    str << "#{@tab.t}    && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);\n\n#{@tab.t}if (#{table.lname_dc}_model != null)\n#{@tab.t}"
    str << "{\n#{@tab.long}"
    table.each_field do |field|
      str << "#{@tab.t}#{table.lname_dc}_model.#{field.name} = #{table.lname_dc}.#{field.name};//#{field.explanation}#{get_relation(field)}\n"
    end
    str << "#{@tab.t}db_#{table.library_name}.Entry(#{table.lname_dc}_model).State = EntityState.Modified;\n"
    str << "#{@tab.s}}\n#{@tab.t}else\n#{@tab.t}"
    str << "{\n#{@tab.l}throw new Exception(\"记录不存在\");\n#{@tab.t}//db_#{table.library_name}.#{table.name}.Add(#{table.lname_dc});\n"
    str << "#{@tab.s}}\n#{@tab.t}db_#{table.library_name}.SaveChanges();\n"
    str << "#{@tab.s}}\n"
  end
  def make_controller_InitViewBag(table)
    str = "#{@tab.t}public void InitViewBag()\n#{@tab.t}"
    str << "{\n#{@tab.l}"
    table.each_field{|field| str << get_selLst(field)}
    str << "\n#{@tab.s}}\n\n"
  end
  def make_controller_index(table)
    str = "#{@tab.t}public ActionResult Index()\n#{@tab.t}"
    str << "{\n#{@tab.l}return View(new #{table.name}());\n"
    str << "#{@tab.s}}\n"
  end
  def make_controller_create(table)
    str = "#{@tab.t}public ActionResult Create()\n#{@tab.t}"
    str << "{\n#{@tab.l}InitViewBag();\n#{@tab.t}\n#{@tab.t}return View(new #{table.name}());\n""#{@tab.s}}\n\n"
    str << "#{@tab.t}[HttpPost]\n#{@tab.t}public ActionResult Create(#{table.name} #{table.lname_dc})\n#{@tab.t}"
    str << "{\n#{@tab.l}InitViewBag();\n#{@tab.t}try\n#{@tab.t}"
    str << "{\n#{@tab.l}//\n#{@tab.t}//\n#{@tab.t}Add#{table.lname.capitalize}(#{table.lname_dc});\n#{@tab.t}return RedirectToAction(\"Index\");\n"
    str << "#{@tab.s}}\n#{@tab.t}catch (DbEntityValidationException dbEx)\n#{@tab.t}"
    str << "{\n#{@tab.l}SetTopCenter(dbEx.Message);\n#{@tab.t}return View(#{table.lname_dc});\n#{@tab.s}}\n#{@tab.t}catch (Exception e)\n#{@tab.t}"
    str << "{\n#{@tab.l}SetTopCenter(e.Message);\n#{@tab.t}return View(#{table.lname_dc});\n"
    str << "#{@tab.s}}\n"
    str << "#{@tab.s}}\n\n"
  end
  def make_controller_edit(table)
    str = "#{@tab.t}public ActionResult Edit(int id)\n#{@tab.t}"
    str << "{\n#{@tab.l}InitViewBag();\n#{@tab.t}\n#{@tab.t}#{table.name} #{table.lname_dc}= db_#{table.library_name}.#{table.name}.Single(e => e.#{table.get_first_field_name} == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);\n#{@tab.t}return View(#{table.lname_dc});\n"
    str << "#{@tab.s}}\n\n#{@tab.t}[HttpPost]\n#{@tab.t}public ActionResult Edit(#{table.name} #{table.lname_dc})\n#{@tab.t}"
    str << "{\n#{@tab.l}InitViewBag();\n#{@tab.t}try\n#{@tab.t}"
    str << "{\n#{@tab.l}\n#{@tab.t}\n#{@tab.t}Upd#{table.lname.capitalize}(#{table.lname_dc});\n#{@tab.t}return RedirectToAction(\"Index\");\n"
    str << "#{@tab.s}}\n#{@tab.t}catch (DbEntityValidationException dbEx)\n#{@tab.t}"
    str << "{\n#{@tab.l}SetTopCenter(dbEx.Message);\n#{@tab.t}return View(#{table.lname_dc});\n"
    str << "#{@tab.s}}\n#{@tab.t}catch (Exception e)\n#{@tab.t}"
    str << "{\n#{@tab.l}SetTopCenter(e.Message);\n#{@tab.t}return View(#{table.lname_dc});\n"
    str << "#{@tab.s}}\n"
    str << "#{@tab.s}}\n\n"
  end
  def make_controller_delete(table,is_multi)
    str = "#{@tab.t}#{'/*' unless is_multi}public String Delete(String id#{'Lst' if is_multi})\n#{@tab.t}"
    str << "{\n#{@tab.l}try\n#{@tab.t}"
    str << "{\n#{@tab.l}int[] idlst = Utils.Utils.GetSafeIdsArr(idLst, LDALConstant.DefSpear);\n#{@tab.t}foreach (int id in idlst)\n#{@tab.t}" if is_multi
    str << "{\n#{@tab.l}#{table.name} #{table.lname_dc} = db_#{table.library_name}.#{table.name}.SingleOrDefault(e => e.#{table.get_first_field_name} == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);\n#{@tab.t}db_#{table.library_name}.#{table.name}.Remove(#{table.lname_dc});\n#{@tab.t}db_#{table.library_name}.SaveChanges();\n"
    str << "#{@tab.s}}\n" if is_multi
    str << "#{@tab.t}return \"删除成功！\";\n"
    str << "#{@tab.s}}\n"
    str << "#{@tab.t}catch (DbEntityValidationException dbEx)\n#{@tab.t}"
    str << "{\n#{@tab.l}return \"删除出错！\" + dbEx.Message;\n"
    str << "#{@tab.s}}\n#{@tab.t}catch (Exception e)\n#{@tab.t}"
    str << "{\n#{@tab.l}return \"删除出错！\" + e.Message;\n"
    str << "#{@tab.s}}\n"
    str << "#{@tab.s}}#{'*/' unless is_multi}\n\n"
  end
  def make_controller_get_max_ID(table)
    str = "#{@tab.t}private static int Max_#{table.lname}_ID = 0;\n#{@tab.t}"
    str << "private static object syncIDLock = new object();\n#{@tab.t}"
    str << "//获取#{table.explanation}最大ID\n#{@tab.t}"
    str << "public int GetMax_#{table.lname}_ID()\n#{@tab.t}"
    str << "{\n#{@tab.l}int maxId = 0;\n#{@tab.t}lock (syncIDLock)\n#{@tab.t}"
    str << "{\n#{@tab.l}if (Max_#{table.lname}_ID == 0)\n#{@tab.t}"
    str << "{\n#{@tab.l}#{table.name} #{table.lname_dc} = db_#{table.library_name}.#{table.name}.FirstOrDefault();\n#{@tab.t}"
    str << "if (#{table.lname_dc} == null)\n#{@tab.t}"
    str << "{\n#{@tab.l}Max_#{table.lname}_ID = 1;\n"
    str << "#{@tab.s}}\n#{@tab.t}"
    str << "else\n#{@tab.t}"
    str << "{\n#{@tab.l}//Max_#{table.lname}_ID = db_#{table.library_name}.#{table.name}.Max(e => e.ID) + 1;\n"
    str << "#{@tab.s}}\n"
    str << "#{@tab.s}}\n#{@tab.t}"
    str << "else\n#{@tab.t}"
    str << "{\n#{@tab.l}Max_#{table.lname}_ID++;\n"
    str << "#{@tab.s}}\n#{@tab.t}"
    str << "maxId = Max_#{table.lname}_ID;\n"
    str << "#{@tab.s}}\n#{@tab.t}"
    str << "return maxId;\n"
    str << "#{@tab.s}}\n\n"
  end
  def make_index(table)
    index_str = "@model HanRuEdu.LDAL.#{table.name}\n"
    index_str << %(<table id="dg" title="  " class="easyui-datagrid" style="width:900px;height:500px"\n)
    index_str << "            data-options=\"singleSelect:false,collapsible:true,  url:'@Url.Content(\"~/#{@directory_name}/#{table.lname}/index_jsonstr\")',\n"
    index_str << "            toolbar:'#toolbar', remoteSort:true,pagination:true, rownumbers:true, fitColumns:true,multiSort:true\" >\n"
    index_str << "    <thead>\n        <tr>\n            <!--<th data-options=\"field:'ck',checkbox:true\"></th>-->\n"
    table.each_field do |field|
      index_str << %(            <th field="#{field.name}" width="50" #{'formatter="formatDatebox" ' if field.type == 'datetime'}sortable="true">@Html.LabelFor(m => m.#{field.name}))
      index_str << "</th><!--#{field.explanation}-->\n"
    end
    index_str << "        </tr>\n    </thead>\n</table>\n"
    index_str << %(@{\n    ViewData["index_create"] = Url.Content("~/#{@directory_name}/#{table.lname_dc}/create");\n)
    index_str << %(    ViewData["index_edit"] = Url.Content("~/#{@directory_name}/#{table.lname_dc}/edit");\n)
    index_str << %(    //ViewData["index_detail"] = Url.Content("~/#{@directory_name}/#{table.lname_dc}/details");\n)
    index_str << %(    //ViewData["index_del"] = Url.Content("~/#{@directory_name}/#{table.lname_dc}/delete");\n)
    index_str << %(    ViewData["index_multi_del"] = Url.Content("~/#{@directory_name}/#{table.lname_dc}/delete");\n)
    index_str << %(    ViewData["index_id_name"] = "ID";\n)
    index_str << %(    //ViewData["index_outdata"] = Url.Content("~/zsgl/xsdj/OutExcel");\n)
    index_str << %(    //ViewData["index_indata"] = Url.Content("~/zsgl/xsdj/ImportData");\n}\n)
    index_str << %(@Html.Partial("~/views/shared/indexToolBarPage.cshtml", this.ViewData)\n)
  end
  def make_table_info(table,title)
    info_atr = %(@model HanRuEdu.LDAL.#{table.name}\n@using (Html.BeginForm())\n{\n    @Html.Partial("SingleZTree")\n)
    info_atr << %(    <div id="dlg" class="easyui-panel" title="#{title}" style="width: 900px; height: 500px; padding: 10px 20px">\n)
    info_atr << %(        <center>  <h1 ><span style="font-size:smaller;">#{title}</span></h1></center>\n\n)
    info_atr << %(        <table class="admintable">\n            <tr>\n                <td width="50%"></td>\n                <td width="50%"></td>\n            </tr>\n\n)
    table.each_field do |field|
      info_atr << "            <tr>\n                <td> @Html.LabelFor(m => m.#{field.name}) </td> <!--#{field.explanation}-->\n                <td>\n"
      if field.relation
        info_atr << "                    @Html.DropDownListFor(m => m.#{field.name}, ViewBag.#{field.relation.table.select_method_name}Lst as SelectList)\n"
      elsif field.type == 'datetime'
        info_atr << "                    @Html.TextBoxFor(m => m.#{field.name}, new { @class = \"easyui-datetimebox\", style = \"width:150px; \" })\n"
      #elsif field.type == 'text'
      #  info_atr << "                    @Html.TextBoxFor(m => m.#{field.name}, new { @class = \"easyui-datetimebox\", style = \"width:150px; \" })\n"
      else
        info_atr << "                    @Html.TextBoxFor(m => m.#{field.name}, new { @class = \"easyui-validatebox\", style = \"width:150px; \" })\n"
      end
      info_atr << "                    @Html.ValidationMessageFor(m => m.#{field.name})\n                </td>\n            </tr>\n\n"
    end
    info_atr << "        </table>\n        <br />\n        @{ ViewData[\"ce_cancel\"] = Url.Content(\"~/#{@directory_name}/#{table.lname_dc}/index\");}\n        @Html.Partial(\"~/views/shared/CreateEditToolBarPage.cshtml\", this.ViewData)\n    </div>\n}\n"
  end
  #获得一个字段的值列表
  def get_selLst(field)
    lname = @bztable_hash[field.relation.table.library_name.to_sym] if field.relation
    if lname
      mname = field.relation.table.select_method_name
      result = "ViewBag.#{mname}Lst = #{lname}LDAL.Get#{mname}SelLst();\n#{@tab.t}"
    end
    result ||= ''
  end
  def get_relation(field)
    field.relation ? '   ' << field.relation.table.explanation : ''
  end
end
