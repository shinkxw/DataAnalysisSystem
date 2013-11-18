namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXX_02_01_ZZXQSJ_metadata))]
    public partial class EDU_ZZXX_02_01_ZZXQSJ
    {
        public EDU_ZZXX_02_01_ZZXQSJ()
        {
            XQDM = "";
            XQMC = "";
            XQDZ = "";
            XQLXDH = "";
            XQFZRH = "";
            DZYJ = "";
            XQYZBM = "";
        }
        public class EDU_ZZXX_02_01_ZZXQSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "У������")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQDM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "У������")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "У����ַ")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQDZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "У����ϵ�绰")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQLXDH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "У�������˺�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQFZRH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����ʼ�")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DZYJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "У����������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQYZBM { get; set; }


            [Display(Name = "У�����ڵ�����������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQSZDXZQHM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "У�����")]
            [Range(typeof(decimal), "0", "100000000000000000000")]
            public decimal XQMJ { get; set; }


            [Display(Name = "У���������")]
            [Range(typeof(decimal), "0", "100000000000000000000")]
            public decimal XQJZMJ { get; set; }


            [Display(Name = "У����ѧ���������豸��ֵ")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal XQJXKYSBZZ { get; set; }


            [Display(Name = "У���̶��ʲ���ֵ")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal XQGDZCZZ { get; set; }


        }
    }
}
