namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_WZLM_metadata))]
    public partial class EDU_WZXT_MHXT_WZLM
    {
        public EDU_WZXT_MHXT_WZLM()
        {
            NAME = "";
        }
        public class EDU_WZXT_MHXT_WZLM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ��Ŀ��������")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀʹ������")]
            public Int32 LMSHOWSTYLE { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Display(Name = "��Ŀ����")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String URL { get; set; }


            [Display(Name = "ͼƬ����")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String IMAGEURL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�㼶")]
            public Int32 DEPTH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ¼")]
            public Int32 PID { get; set; }


            [Display(Name = "�б���ʾ��ʽ")]
            public Int32 LISTSHOWSTYLE { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʽ")]
            public Int32 ORDERTYPE { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʾ����")]
            public Int32 SHOWNUMBER { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 OPENFLAG { get; set; }


            [Display(Name = "���Ȩ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LLQX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


        }
    }
}
