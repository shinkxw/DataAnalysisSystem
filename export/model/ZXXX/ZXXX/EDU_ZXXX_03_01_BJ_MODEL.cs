namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXX_03_01_BJ_metadata))]
    public partial class EDU_ZXXX_03_01_BJ
    {
        public EDU_ZXXX_03_01_BJ()
        {
            BH = "";
            NJ = "";
            SFSSMZSYJXB = "";
            SYJXMSM = "";
        }
        public class EDU_ZXXX_03_01_BJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶��")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJ { get; set; }


            [Display(Name = "�༶����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJ { get; set; }


            [Display(Name = "��������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBNY { get; set; }


            [Display(Name = "�����ι���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZRGH { get; set; }


            [Display(Name = "�೤ѧ��")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZXH { get; set; }


            [Display(Name = "�༶�����ƺ�")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJRYCH { get; set; }


            [Display(Name = "ѧ��")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XZ { get; set; }


            [Display(Name = "�༶������")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJLXM { get; set; }


            [Display(Name = "��������")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WLLX { get; set; }


            [Display(Name = "��ҵ����")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYRQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ���������˫���ѧ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSSMZSYJXB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "˫���ѧģʽ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SYJXMSM { get; set; }


        }
    }
}
