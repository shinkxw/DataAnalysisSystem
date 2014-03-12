namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_17_A02_TFSJJL_metadata))]
    public partial class EDU_ZZXS_17_A02_TFSJJL
    {
        public EDU_ZZXS_17_A02_TFSJJL()
        {
            TJSJ = DateTime.Now;
            BJMC = "";
        }
        public class EDU_ZZXS_17_A02_TFSJJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ա��Ϣ��")]
            public Int32 TYXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�սɽ��")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal SJJE { get; set; }


            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMC { get; set; }


        }
    }
}
