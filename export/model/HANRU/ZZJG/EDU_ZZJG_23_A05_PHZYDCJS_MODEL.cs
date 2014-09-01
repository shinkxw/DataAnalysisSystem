namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_23_A05_PHZYDCJS_metadata))]
    public partial class EDU_ZZJG_23_A05_PHZYDCJS
    {
        public EDU_ZZJG_23_A05_PHZYDCJS()
        {
            JXB = "";
            XM = "";
        }
        public class EDU_ZZJG_23_A05_PHZYDCJS_metadata
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


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 DCMCID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ񱻽�ѧ����")]
            public Int32 SFJRBMHP { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ����ȫУ")]
            public Int32 SFKPQX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�ȫУ��")]
            public Int32 SFBQXP { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ��")]
            public Int32 JXBID { get; set; }


        }
    }
}
