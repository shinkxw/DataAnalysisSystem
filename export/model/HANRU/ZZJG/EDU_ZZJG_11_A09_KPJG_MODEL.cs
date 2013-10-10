namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A09_KPJG_metadata))]
    public partial class EDU_ZZJG_11_A09_KPJG
    {
        public EDU_ZZJG_11_A09_KPJG()
        {
        }
        public class EDU_ZZJG_11_A09_KPJG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����������ݱ�")]
            public Int32 KPBHNRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����������Ŀ")]
            public Int32 KPNRXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ʽ")]
            public Int32 KPFSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 KPRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 BPRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 KPZTID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ֵ")]
            public Int32 KPFZ { get; set; }


        }
    }
}
