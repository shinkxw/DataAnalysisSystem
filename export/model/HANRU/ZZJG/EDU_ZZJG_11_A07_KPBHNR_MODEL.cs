namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A07_KPBHNR_metadata))]
    public partial class EDU_ZZJG_11_A07_KPBHNR
    {
        public EDU_ZZJG_11_A07_KPBHNR()
        {
        }
        public class EDU_ZZJG_11_A07_KPBHNR_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 KPID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 KPNRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ȩ��")]
            public Int32 QZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʾ��ʽ")]
            public Int32 XSFS { get; set; }


        }
    }
}
