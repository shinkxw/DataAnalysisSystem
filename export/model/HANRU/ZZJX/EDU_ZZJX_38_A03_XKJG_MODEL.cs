namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_38_A03_XKJG_metadata))]
    public partial class EDU_ZZJX_38_A03_XKJG
    {
        public EDU_ZZJX_38_A03_XKJG()
        {
        }
        public class EDU_ZZJX_38_A03_XKJG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ�༶")]
            public Int32 JXBID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ��嵥")]
            public Int32 KCQDID { get; set; }


        }
    }
}
