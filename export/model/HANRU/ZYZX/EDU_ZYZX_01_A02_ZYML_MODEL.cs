namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A02_ZYML_metadata))]
    public partial class EDU_ZYZX_01_A02_ZYML
    {
        public EDU_ZYZX_01_A02_ZYML()
        {
            MLMC = "";
            YYZID = "";
            WJLXIDLB = "";
        }
        public class EDU_ZYZX_01_A02_ZYML_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ŀ¼����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MLMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ¼")]
            public Int32 FMLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ӵ����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YYZID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ϴ��ļ�����ID�б�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WJLXIDLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ȩ��")]
            public Int32 FWQX { get; set; }


        }
    }
}
