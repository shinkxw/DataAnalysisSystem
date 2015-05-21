namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A52_DFTJZDJSFS_metadata))]
    public partial class EDU_OAXT_50_A52_DFTJZDJSFS
    {
        public EDU_OAXT_50_A52_DFTJZDJSFS()
        {
            JSCS = "";
        }
        public class EDU_OAXT_50_A52_DFTJZDJSFS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ݼ�")]
            public Int32 SJJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ֶ�")]
            public Int32 ZDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 JSLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ֶ�һ")]
            public Int32 ZDYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ֶ�һ��ֵ")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal ZDYSZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ֶζ�")]
            public Int32 ZDEID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ֶζ���ֵ")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal ZDESZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSCS { get; set; }


        }
    }
}
