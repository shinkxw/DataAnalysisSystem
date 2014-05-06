namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_52_A03_XSZL_metadata))]
    public partial class EDU_ZXXS_52_A03_XSZL
    {
        public EDU_ZXXS_52_A03_XSZL()
        {
            NR = "";
            SCSJ = DateTime.Now;
        }
        public class EDU_ZXXS_52_A03_XSZL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѡ����")]
            public Int32 PXMCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѡ��Ŀ")]
            public Int32 PXXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϴ�ʱ��")]
            public DateTime SCSJ { get; set; }


        }
    }
}
