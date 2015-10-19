namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_20_A01_DSSJ_metadata))]
    public partial class EDU_ZXXS_20_A01_DSSJ
    {
        public EDU_ZXXS_20_A01_DSSJ()
        {
            DSXM = "";
            DSJS = "";
            BJIDLB = "";
            BJMCLB = "";
        }
        public class EDU_ZXXS_20_A01_DSSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʦ����")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DSXM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʦ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DSJS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѡ������")]
            public Int32 ZDKXZRS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����ѡ������")]
            public Int32 ZDXXZRS { get; set; }


        }
    }
}
