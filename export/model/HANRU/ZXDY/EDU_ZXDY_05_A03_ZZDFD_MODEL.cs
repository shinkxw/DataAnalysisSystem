namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_05_A03_ZZDFD_metadata))]
    public partial class EDU_ZXDY_05_A03_ZZDFD
    {
        public EDU_ZXDY_05_A03_ZZDFD()
        {
            FSSJ = DateTime.Now;
            DFSJ = DateTime.Now;
            DFJSID = "";
            BZ = "";
        }
        public class EDU_ZXDY_05_A03_ZZDFD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "值周打分单表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "周次")]
            public Int32 ZCID { get; set; }


            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJ { get; set; }


            [Display(Name = "学生ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSIDLB { get; set; }


            [Display(Name = "学生名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSMCLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属细则")]
            public Int32 SSXZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分分值")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal DFFZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发生时间")]
            public DateTime FSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分时间")]
            public DateTime DFSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "打分教师")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFJSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
