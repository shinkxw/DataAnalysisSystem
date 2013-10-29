namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_02_02_ZZBJ_metadata))]
    public partial class EDU_ZZJX_02_02_ZZBJ
    {
        public EDU_ZZJX_02_02_ZZBJ()
        {
            XZBDM = "";
            ZZNJID = "";
            XZBMC = "";
            JBNY = "";
            JXJH = "";
            JGH = "";
            XQDM = "";
        }
        public class EDU_ZZJX_02_02_ZZBJ_metadata
        {
            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���������")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZBDM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "רҵ������Ϣ")]
            public Int32 ZYXXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧУ�꼶���ݱ�")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZNJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZBMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBNY { get; set; }


            [Display(Name = "�����ι���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZRGH { get; set; }


            [Display(Name = "���ұ��")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSBH { get; set; }


            [Display(Name = "��������")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal NANSRS { get; set; }


            [Display(Name = "Ů������")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal NVSRS { get; set; }


            [Display(Name = "������")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal ZRS { get; set; }


            [Display(Name = "�೤ѧ��")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZXH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ�ƻ�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JGH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "У������")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQDM { get; set; }


            [Display(Name = "������")]
            public Int32 BZRID { get; set; }


        }
    }
}
