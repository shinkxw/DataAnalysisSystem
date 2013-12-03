namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_22_A04_HYJY_metadata))]
    public partial class EDU_OAXT_22_A04_HYJY
    {
        public EDU_OAXT_22_A04_HYJY()
        {
            HYJYNR = "";
            JLRID = "";
            JLSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_OAXT_22_A04_HYJY_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 HYID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����Ҫ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HYJYNR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��¼��")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JLRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��¼ʱ��")]
            public DateTime JLSJ { get; set; }


        }
    }
}
