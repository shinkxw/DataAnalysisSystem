namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_08_A01_DGFSQ_metadata))]
    public partial class EDU_ZZJX_08_A01_DGFSQ
    {
        public EDU_ZZJX_08_A01_DGFSQ()
        {
            JFRQ = new DateTime(1900, 1, 1);
            SFYSH = "";
        }
        public class EDU_ZZJX_08_A01_DGFSQ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "已缴金额")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal YJJE { get; set; }


            [Display(Name = "缴费日期")]
            public DateTime JFRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否已审核")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFYSH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核人员")]
            public Int32 SHRID { get; set; }


        }
    }
}
