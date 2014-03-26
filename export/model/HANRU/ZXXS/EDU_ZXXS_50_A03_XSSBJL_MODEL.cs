namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_50_A03_XSSBJL_metadata))]
    public partial class EDU_ZXXS_50_A03_XSSBJL
    {
        public EDU_ZXXS_50_A03_XSSBJL()
        {
            BJID = "";
            QQSJ = "";
            JTQK = "";
            TW = "";
            SFTZJZ = "";
            RQ = DateTime.Now;
        }
        public class EDU_ZXXS_50_A03_XSSBJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ȱ��ԭ��")]
            public Int32 QQYYID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ȱ��ʱ��")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QQSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTQK { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TW { get; set; }


            [Display(Name = "�Ƿ��ҽ")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFJY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ�֪ͨ�ҳ�")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFTZJZ { get; set; }


            [Display(Name = "�ҳ���ϵ��ʽ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZLXFS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public DateTime RQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϱ���ʦ")]
            public Int32 SBJSID { get; set; }


        }
    }
}
