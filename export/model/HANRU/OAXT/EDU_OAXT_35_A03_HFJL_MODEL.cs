namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_35_A03_HFJL_metadata))]
    public partial class EDU_OAXT_35_A03_HFJL
    {
        public EDU_OAXT_35_A03_HFJL()
        {
            HFRID = "";
            HFNR = "";
            HSSJ = DateTime.Now;
        }
        public class EDU_OAXT_35_A03_HFJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 RWID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ظ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HFRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ظ�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HFNR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ظ�ʱ��")]
            public DateTime HSSJ { get; set; }


        }
    }
}
