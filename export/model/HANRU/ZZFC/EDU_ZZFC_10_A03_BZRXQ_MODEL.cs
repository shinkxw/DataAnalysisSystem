namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZFC_10_A03_BZRXQ_metadata))]
    public partial class EDU_ZZFC_10_A03_BZRXQ
    {
        public EDU_ZZFC_10_A03_BZRXQ()
        {
            BJID = "";
            XQSJ = DateTime.Now;
        }
        public class EDU_ZZFC_10_A03_BZRXQ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 BZRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime XQSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���޴���")]
            public Int32 XQCS { get; set; }


        }
    }
}
