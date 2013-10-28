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
            TJSJ = new DateTime(1900, 1, 1);
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
            [Display(Name = "�սɽ��")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal SJJE { get; set; }


            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}
