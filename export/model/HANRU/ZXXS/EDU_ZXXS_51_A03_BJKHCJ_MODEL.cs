namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A03_BJKHCJ_metadata))]
    public partial class EDU_ZXXS_51_A03_BJKHCJ
    {
        public EDU_ZXXS_51_A03_BJKHCJ()
        {
            NJID = "";
            BJID = "";
            DJRID = "";
            DJSJ = DateTime.Now;
        }
        public class EDU_ZXXS_51_A03_BJKHCJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 SSDLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����������Ŀ")]
            public Int32 SSDLXMID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ǽ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ǽ�ʱ��")]
            public DateTime DJSJ { get; set; }


        }
    }
}
