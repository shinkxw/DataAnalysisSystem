namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A04_ZYJXJH_metadata))]
    public partial class EDU_ZZJX_55_A04_ZYJXJH
    {
        public EDU_ZZJX_55_A04_ZYJXJH()
        {
            KCBH = "";
            KKDW = "";
            KSXS = "";
            SKFSM = "";
            JXDG = "";
        }
        public class EDU_ZZJX_55_A04_ZYJXJH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "רҵ")]
            public Int32 ZYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ϣ")]
            public Int32 FZXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ���������")]
            public Int32 KCPFLXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCBH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ��")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZXF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧʱ")]
            public Int32 ZXS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ε�λ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KKDW { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ʽ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSXS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ڿη�ʽ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKFSM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXDG { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�ʹ��")]
            public Int32 SFSY { get; set; }


        }
    }
}
