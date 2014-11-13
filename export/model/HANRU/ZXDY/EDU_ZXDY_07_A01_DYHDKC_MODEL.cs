namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_07_A01_DYHDKC_metadata))]
    public partial class EDU_ZXDY_07_A01_DYHDKC
    {
        public EDU_ZXDY_07_A01_DYHDKC()
        {
            BJ = "";
            HDSJ = "";
            HDZT = "";
            DYHDGCJL = "";
            HDGCTPZS = "";
            DYHDHJ = "";
        }
        public class EDU_ZXDY_07_A01_DYHDKC_metadata
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
            public String BJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ʱ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������̼�¼")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DYHDGCJL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����ͼƬչʾ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDGCTPZS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DYHDHJ { get; set; }


        }
    }
}
