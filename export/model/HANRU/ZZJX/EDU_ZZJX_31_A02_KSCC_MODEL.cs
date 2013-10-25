namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_31_A02_KSCC_metadata))]
    public partial class EDU_ZZJX_31_A02_KSCC
    {
        public EDU_ZZJX_31_A02_KSCC()
        {
            Name = "";
            ExamDate = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZJX_31_A02_KSCC_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 ExamID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Name { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ������")]
            public Int32 TypeID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public DateTime ExamDate { get; set; }


        }
    }
}
