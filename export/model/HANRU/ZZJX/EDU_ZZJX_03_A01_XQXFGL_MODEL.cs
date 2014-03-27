namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_03_A01_XQXFGL_metadata))]
    public partial class EDU_ZZJX_03_A01_XQXFGL
    {
        public EDU_ZZJX_03_A01_XQXFGL()
        {
            JHBH = "";
        }
        public class EDU_ZZJX_03_A01_XQXFGL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ�ƻ�")]
            public Int32 JXJHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ƻ����")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHBH { get; set; }


            [Display(Name = "���ѧ��")]
            [Range(typeof(decimal), "0", "99")]
            public decimal ZDXF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ѧ��")]
            [Range(typeof(decimal), "0", "99")]
            public decimal ZGXF { get; set; }


        }
    }
}
