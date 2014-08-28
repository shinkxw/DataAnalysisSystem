namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_23_A06_PHZYDCJG_metadata))]
    public partial class EDU_ZZJG_23_A06_PHZYDCJG
    {
        public EDU_ZZJG_23_A06_PHZYDCJG()
        {
        }
        public class EDU_ZZJG_23_A06_PHZYDCJG_metadata
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
            [Display(Name = "��������")]
            public Int32 DCMCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���۽�ʦ")]
            public Int32 PJJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ʦ")]
            public Int32 BPJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ")]
            public Int32 TMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ")]
            public Int32 FZ { get; set; }


        }
    }
}
