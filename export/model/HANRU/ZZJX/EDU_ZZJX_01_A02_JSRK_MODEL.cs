namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_01_A02_JSRK_metadata))]
    public partial class EDU_ZZJX_01_A02_JSRK
    {
        public EDU_ZZJX_01_A02_JSRK()
        {
            KCH = "";
            JHBH = "";
            JXDG = "";
        }
        public class EDU_ZZJX_01_A02_JSRK_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����")]
            public Int32 KXH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ��")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̺�")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ƻ����")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHBH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXDG { get; set; }


        }
    }
}