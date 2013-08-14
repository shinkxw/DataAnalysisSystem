namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_07_02_XJYD_metadata))]
    public partial class EDU_ZXXS_07_02_XJYD
    {
        public EDU_ZXXS_07_02_XJYD()
        {
            YDLBM = "";
            YDRQ = "";
            YDYYM = "";
            YBH = "";
            YNJ = "";
            XBH = "";
            XNJ = "";
        }
        public class EDU_ZXXS_07_02_XJYD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ���춯����")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�춯�����")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YDLBM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�춯����")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YDRQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�춯ԭ����")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YDYYM { get; set; }


            [Display(Name = "��������")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SPRQ { get; set; }


            [Display(Name = "�����ĺ�")]
            [StringLength(24)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SPWH { get; set; }


            [Display(Name = "������")]
            public Int32 JBRID { get; set; }


            [Display(Name = "�����˹���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBRGH { get; set; }


            [Display(Name = "�춯��ԴѧУ��")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YDLYXXM { get; set; }


            [Display(Name = "�춯ȥ��ѧУ��")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YDQXXXM { get; set; }


            [Display(Name = "�춯˵��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YDSM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ԭרҵ")]
            public Int32 YZYID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ԭ���")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ԭ�꼶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YNJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��רҵ")]
            public Int32 XZYID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ְ��")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XBH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���꼶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XNJ { get; set; }


        }
    }
}
