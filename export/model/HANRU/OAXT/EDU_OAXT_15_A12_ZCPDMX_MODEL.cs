namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A12_ZCPDMX_metadata))]
    public partial class EDU_OAXT_15_A12_ZCPDMX
    {
        public EDU_OAXT_15_A12_ZCPDMX()
        {
            PUserID = "";
            Name = "";
            Remark = "";
        }
        public class EDU_OAXT_15_A12_ZCPDMX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 AID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�̵��")]
            public Int32 PID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�̵���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PUserID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal Storesum { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵ����")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal RealSum { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ʲ�����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Name { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ʲ�����")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal AllCount { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Remark { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal BorrowCount { get; set; }


        }
    }
}
