namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_10_A02_TZYDJL_metadata))]
    public partial class EDU_OAXT_10_A02_TZYDJL
    {
        public EDU_OAXT_10_A02_TZYDJL()
        {
            BTZRID = "";
            YDRQ = DateTime.Now;
            SFYD = "";
        }
        public class EDU_OAXT_10_A02_TZYDJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "֪ͨ�Ķ���¼")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "֪ͨ")]
            public Int32 TZID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��֪ͨ��")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BTZRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ķ�����")]
            public DateTime YDRQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ����Ķ�")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFYD { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ɾ��״̬")]
            public Int32 SCZT { get; set; }


        }
    }
}
