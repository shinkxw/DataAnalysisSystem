namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_05_A08_XCBS_metadata))]
    public partial class EDU_ZWXT_05_A08_XCBS
    {
        public EDU_ZWXT_05_A08_XCBS()
        {
            BSYHID = "";
            BSSJ = DateTime.Now;
            SHYHID = "";
            SHSJ = DateTime.Now;
            BSSM = "";
        }
        public class EDU_ZWXT_05_A08_XCBS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "У��")]
            public Int32 XCID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʧ�û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BSYHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʧʱ��")]
            public DateTime BSSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHYHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʧ״̬")]
            public Int32 BSZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʧ˵��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BSSM { get; set; }


        }
    }
}
