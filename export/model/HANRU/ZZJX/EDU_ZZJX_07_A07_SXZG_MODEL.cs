namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A07_SXZG_metadata))]
    public partial class EDU_ZZJX_07_A07_SXZG
    {
        public EDU_ZZJX_07_A07_SXZG()
        {
        }
        public class EDU_ZZJX_07_A07_SXZG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰת��")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ת����λ")]
            public Int32 ZCGW { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ת����λ��ҵ")]
            public Int32 ZCGWQY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ת���λ")]
            public Int32 ZRGW { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ת���λ��ҵ")]
            public Int32 ZRGWQY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���������")]
            public Int32 BZRSH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ת����ҵ���")]
            public Int32 ZCQYSH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ת����ҵ���")]
            public Int32 ZRQYSH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ҵ�����")]
            public Int32 JYCSH { get; set; }


        }
    }
}
