namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A18_SHJL_metadata))]
    public partial class EDU_OAXT_50_A18_SHJL
    {
        public EDU_OAXT_50_A18_SHJL()
        {
            SHYHID = "";
            SHSJ = DateTime.Now;
            BZ = "";
        }
        public class EDU_OAXT_50_A18_SHJL_metadata
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
            [Display(Name = "��˽ڵ�")]
            public Int32 SHJDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֽ��")]
            public Int32 DFJGID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��˽��")]
            public Int32 SHJG { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHYHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
