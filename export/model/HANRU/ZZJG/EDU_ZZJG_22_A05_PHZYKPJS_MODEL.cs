namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_22_A05_PHZYKPJS_metadata))]
    public partial class EDU_ZZJG_22_A05_PHZYKPJS
    {
        public EDU_ZZJG_22_A05_PHZYKPJS()
        {
            XSZW = "";
            TJZW = "";
            JXB = "";
            JYZ = "";
            XM = "";
        }
        public class EDU_ZZJG_22_A05_PHZYKPJS_metadata
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
            [Display(Name = "��ʦ")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʾְ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSZW { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ͳ��ְ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TJZW { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ����ȫУ")]
            public Int32 SFKPQX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�ȫУ��")]
            public Int32 SFBQXP { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���벿�Ż���")]
            public Int32 SFJRBMHP { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ񲻱�ȫУ��")]
            public Int32 SFBBQXP { get; set; }


        }
    }
}
