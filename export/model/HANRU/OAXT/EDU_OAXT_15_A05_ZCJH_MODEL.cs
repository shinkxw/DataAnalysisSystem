namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A05_ZCJH_metadata))]
    public partial class EDU_OAXT_15_A05_ZCJH
    {
        public EDU_OAXT_15_A05_ZCJH()
        {
            Unit = "";
            Borrower = "";
            Remark = "";
        }
        public class EDU_OAXT_15_A05_ZCJH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ʲ�Ŀ¼��")]
            public Int32 TypeID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ʲ������")]
            public Int32 ClassID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 AID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal SumCount { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��λ")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Unit { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���÷�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Borrower { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Remark { get; set; }


        }
    }
}
