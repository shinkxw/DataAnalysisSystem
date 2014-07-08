namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_26_A04_SYSSQXGJL_metadata))]
    public partial class EDU_OAXT_26_A04_SYSSQXGJL
    {
        public EDU_OAXT_26_A04_SYSSQXGJL()
        {
            XGYHID = "";
            XGYHXM = "";
            XGSJ = DateTime.Now;
        }
        public class EDU_OAXT_26_A04_SYSSQXGJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵ���������")]
            public Int32 SQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�޸��û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XGYHID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�޸��û�����")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XGYHXM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�޸�ʱ��")]
            public DateTime XGSJ { get; set; }


        }
    }
}
