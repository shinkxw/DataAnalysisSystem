namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A07_ZYJXJH_metadata))]
    public partial class EDU_ZZJX_55_A07_ZYJXJH
    {
        public EDU_ZZJX_55_A07_ZYJXJH()
        {
        }
        public class EDU_ZZJX_55_A07_ZYJXJH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "רҵ")]
            public Int32 ZYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "רҵ�γ̿�")]
            public Int32 ZYKCKID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ�ڴ���")]
            public Int32 XQDH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʱ")]
            public Int32 KS { get; set; }


        }
    }
}
