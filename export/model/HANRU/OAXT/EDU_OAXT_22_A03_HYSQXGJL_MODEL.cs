namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_22_A03_HYSQXGJL_metadata))]
    public partial class EDU_OAXT_22_A03_HYSQXGJL
    {
        public EDU_OAXT_22_A03_HYSQXGJL()
        {
            XGYHID = "";
            XGYHXM = "";
            HYMC = "";
            HYNR = "";
            ZCRID = "";
            JLRID = "";
            HYJB = "";
            HYDZ = "";
            YHRYIDLB = "";
            YHRYXMLB = "";
            KSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            SQSJ = DateTime.Now;
            SQRID = "";
            BZ = "";
            LCMBMC = "";
            DQBZMC = "";
        }
        public class EDU_OAXT_22_A03_HYSQXGJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "会议申请表")]
            public Int32 SQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "修改用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XGYHID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "修改用户姓名")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XGYHXM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "会议名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HYMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "会议内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HYNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "主持人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZCRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "记录人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JLRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "会议级别")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HYJB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "会议地点")]
            public Int32 HYDZID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "会议地址")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HYDZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "与会人员ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHRYIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "与会人员姓名列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHRYXMLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束时间")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请状态")]
            public Int32 SQZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "申请人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Display(Name = "附件")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "流程实例")]
            public Int32 LCSLID { get; set; }


            [Display(Name = "流程实例状态")]
            public Int32 LCSLZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "流程模板")]
            public Int32 LCMBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "流程模板名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LCMBMC { get; set; }


            [Display(Name = "当前步骤")]
            public Int32 DQBZID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "当前步骤名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DQBZMC { get; set; }


            [Display(Name = "当前步骤审核状态")]
            public Int32 DQBZSHZT { get; set; }


            [Display(Name = "申请人部门")]
            public Int32 SQRBMID { get; set; }


        }
    }
}
