namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A05_XSYP_metadata))]
    public partial class EDU_ZZJX_07_A05_XSYP
    {
        public EDU_ZZJX_07_A05_XSYP()
        {
        }
        public class EDU_ZZJX_07_A05_XSYP_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��ӦƸ��Ϣ")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����Ϣ")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ҵ")]
            public Int32 QYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ��λ")]
            public Int32 GWID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ���")]
            public Int32 XXSH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ҵ���")]
            public Int32 QYSH { get; set; }


        }
    }
}
