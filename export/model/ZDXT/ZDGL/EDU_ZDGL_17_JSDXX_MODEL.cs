namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_17_JSDXX_metadata))]
    public partial class EDU_ZDGL_17_JSDXX
    {
        public EDU_ZDGL_17_JSDXX()
        {
            XH = "";
            SN = "";
            SFECFX = "";
            WXRQ = DateTime.Now;
        }
        public class EDU_ZDGL_17_JSDXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ͺ�")]
            public Int32 XHID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "SN��")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SN { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ���η���")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFECFX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���޵�λ")]
            public Int32 SXDWID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ϣ")]
            public Int32 GZXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ά����Ϣ")]
            public Int32 WXXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ά����")]
            public Int32 WXRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ά������")]
            public DateTime WXRQ { get; set; }


        }
    }
}
