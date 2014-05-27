namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A11_SXMYKQJL_metadata))]
    public partial class EDU_ZZJX_22_A11_SXMYKQJL
    {
        public EDU_ZZJX_22_A11_SXMYKQJL()
        {
            SJ = DateTime.Now;
        }
        public class EDU_ZZJX_22_A11_SXMYKQJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ��")]
            public Int32 SXSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʱ��")]
            public DateTime SJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵ�ʹ���")]
            [Range(typeof(decimal), "0", "999")]
            public decimal SJGR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�¼�����")]
            [Range(typeof(decimal), "0", "999")]
            public decimal SJTS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            [Range(typeof(decimal), "0", "999")]
            public decimal KGTS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            [Range(typeof(decimal), "0", "999")]
            public decimal BJTS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            [Range(typeof(decimal), "0", "999")]
            public decimal GXTS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ٵ�����")]
            [Range(typeof(decimal), "0", "999")]
            public decimal CDTS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZTTS { get; set; }


        }
    }
}
