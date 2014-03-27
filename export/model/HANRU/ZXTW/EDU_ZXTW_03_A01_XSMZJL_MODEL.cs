namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXTW_03_A01_XSMZJL_metadata))]
    public partial class EDU_ZXTW_03_A01_XSMZJL
    {
        public EDU_ZXTW_03_A01_XSMZJL()
        {
            BJID = "";
            JZKSSJ = DateTime.Now;
            JZJSSJ = DateTime.Now;
            JZYY = "";
            ZDJG = "";
        }
        public class EDU_ZXTW_03_A01_XSMZJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���￪ʼʱ��")]
            public DateTime JZKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������ʱ��")]
            public DateTime JZJSSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ԭ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZYY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ͻ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDJG { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal FY { get; set; }


        }
    }
}
