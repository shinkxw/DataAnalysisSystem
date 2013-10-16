namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_YHFBQX_metadata))]
    public partial class EDU_WZXT_MHXT_YHFBQX
    {
        public EDU_WZXT_MHXT_YHFBQX()
        {
            LOGINNAME = "";
            JSIDLB = "";
        }
        public class EDU_WZXT_MHXT_YHFBQX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ȩ��")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LOGINNAME { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ɫID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSIDLB { get; set; }


            [Display(Name = "�Ƿ���Ҫ���")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFXYSH { get; set; }


        }
    }
}
